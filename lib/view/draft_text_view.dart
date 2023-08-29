import 'dart:convert';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_draft/data/draft_data.dart';
import 'package:flutter_draft/type/block_type.dart';
import 'package:flutter_draft/util/text_util.dart';

typedef OnLinkTab = void Function(String url);

class DraftTextView extends StatelessWidget {
  final DraftData data;
  final TextStyle defaultStyle;
  final OnLinkTab? onLinkTab;
  final double blockSpacing = 8;
  final ScrollController? controller;
  final EdgeInsets? padding;

  DraftTextView.json(dynamic json,
      {Key? key,
      this.onLinkTab,
      this.defaultStyle = const TextStyle(fontSize: 12, color: Colors.black),
      this.controller,
      this.padding})
      : data = DraftData.fromJson(json),
        super(key: key);

  DraftTextView.jsonString(String json,
      {Key? key,
      this.onLinkTab,
      this.defaultStyle = const TextStyle(fontSize: 12, color: Colors.black),
      this.controller,
      this.padding})
      : data = DraftData.fromJson(jsonDecode(json)),
        super(key: key);

  const DraftTextView(
      {Key? key,
      required this.data,
      this.onLinkTab,
      this.defaultStyle = const TextStyle(fontSize: 12, color: Colors.black),
      this.controller,
      this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: padding,
      controller: controller,
      itemBuilder: itemBuilder,
      itemCount: data.blocks.length,
      shrinkWrap: true,
    );
  }

  Widget itemBuilder(BuildContext context, int index) {
    final block = data.blocks[index];
    return Padding(
      padding: EdgeInsets.only(bottom: blockSpacing),
      child: blockBuilder(context, block),
    );
  }

  Widget blockBuilder(BuildContext context, Block block) {
    Text textView;
    var textTheme = Theme.of(context).textTheme;
    TextStyle textStyle;
    switch (block.type) {
      case BlockType.h1:
        textStyle = textTheme.displayLarge ?? defaultStyle;
        break;
      case BlockType.h2:
        textStyle = textTheme.displayMedium ?? defaultStyle;
        break;
      case BlockType.h3:
        textStyle = textTheme.displaySmall ?? defaultStyle;
        break;
      case BlockType.h4:
        textStyle = textTheme.headlineMedium ?? defaultStyle;
        break;
      case BlockType.h5:
        textStyle = textTheme.headlineSmall ?? defaultStyle;
        break;
      case BlockType.h6:
        textStyle = textTheme.titleLarge ?? defaultStyle;
        break;
      case BlockType.code:
        textStyle = defaultStyle.copyWith(
            fontWeight: FontWeight.w500, color: Colors.grey.shade700);
        break;
      case BlockType.quote:
        textStyle = TextStyle(
          fontSize: 14,
          color: Colors.grey.shade600,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w500,
        );
        break;
      default:
        textStyle = textTheme.bodyMedium ?? defaultStyle;
        break;
    }
    if (block.inlineStyle.isNotEmpty) {
      var styleMap = block.textStyleMap(textStyle);
      textView = Text.rich(
          TextSpan(
              children: styleMap
                  .map((entry) => TextSpan(text: entry.key, style: entry.value))
                  .toList()),
          textAlign: block.data.textAlign);
    } else {
      textView =
          Text(block.text, style: textStyle, textAlign: block.data.textAlign);
    }
    if (!block.data.isEmpty && block.data.textIndent != 0) {
      return Padding(
        padding: EdgeInsets.only(
            left: TextUtil.measureText('缩进', textStyle).width *
                block.data.textIndent),
        child: textView,
      );
    }
    // 引用块
    if (block.type == BlockType.quote) {
      return Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.grey.shade100,
            border: Border(
                left: BorderSide(color: Colors.grey.shade300, width: 5))),
        child: textView,
      );
    }
    if (block.type == BlockType.code) {
      return Container(
        padding: const EdgeInsets.all(12),
        color: Colors.grey.shade100,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: textView,
        ),
      );
    }
    // 无序列表
    if (block.type == BlockType.bulletList) {
      var size = TextUtil.measureText('缩进', textStyle);
      double dotSize = 5;
      const solid = BoxDecoration(color: Colors.black, shape: BoxShape.circle);
      var hollow = BoxDecoration(
          shape: BoxShape.circle, border: Border.all(color: Colors.black));
      Widget dot = Container(
        width: dotSize,
        height: dotSize,
        margin: EdgeInsets.only(right: dotSize),
        decoration: block.depth > 0 ? hollow : solid,
      );
      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox.fromSize(
            size: Size(size.width * block.depth + dotSize * 2, size.height),
            child: Align(alignment: Alignment.centerRight, child: dot),
          ),
          textView,
        ],
      );
    }
    if (block.type == BlockType.numberList) {
      var size = TextUtil.measureText('缩进', textStyle);
      Text numberView = Text('${block.data.number}.', style: textStyle);
      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox.fromSize(
            size: Size(size.width * block.depth + size.width / 2, size.height),
            child: Align(alignment: Alignment.centerRight, child: numberView),
          ),
          textView,
        ],
      );
    }
    if (block.entityRanges.isNotEmpty) {
      List<Widget> children = [];
      String text = block.text;
      var entityMap = data.entityMap;
      for (var range in block.entityRanges) {
        var entity = entityMap["${range.key}"];
        if (entity == null) continue;
        switch (entity.type) {
          case EntityType.image:
            Image image = Image.network(
              entity.data.url!,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.scaleDown,
            );
            children.add(image);
            if (entity.data.name?.isNotEmpty ?? false) {
              children.add(Text(entity.data.name!,
                  style: textStyle, textAlign: TextAlign.center));
            }
            break;
          case EntityType.divider:
            Divider divider = const Divider();
            children.add(divider);
            break;
          case EntityType.link:
            textView = Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: text.substring(0, range.offset)),
                  TextSpan(
                    text: text.substring(
                        range.offset, range.offset + range.length),
                    style: textStyle.copyWith(
                        color: Colors.blue,
                        decoration: TextDecoration.underline),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => onLinkTab?.call(entity.data.url ?? ""),
                  ),
                  TextSpan(text: text.substring(range.offset + range.length)),
                ],
              ),
              textAlign: block.data.textAlign,
            );
            children.add(textView);
            break;
        }
      }
      return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: children,
      );
    }
    return textView;
  }
}
