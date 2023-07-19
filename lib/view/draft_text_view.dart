import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_draft/data/draft_data.dart';
import 'package:flutter_draft/type/block_type.dart';

class DraftTextView extends StatelessWidget {
  final DraftData data;

  DraftTextView.json(String json, {Key? key})
      : data = DraftData.fromJson(jsonDecode(json)),
        super(key: key);

  const DraftTextView({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: itemBuilder, itemCount: data.blocks.length);
  }

  Widget itemBuilder(BuildContext context, int index) {
    final block = data.blocks[index];
    var textTheme = Theme.of(context).textTheme;
    TextStyle style = textTheme.bodyMedium ?? const TextStyle(fontSize: 12, color: Colors.black);
    if (!block.data.isEmpty) {
      style.copyWith();
      if (block.data.textIndent != 0) {
        style = style.copyWith();
      }
    }

    switch (block.type) {
      case BlockType.unStyled:
        return Text(
          block.text,
          style: textTheme.bodyMedium,
          textAlign: block.data.textAlign,
        );
      case BlockType.h1:
        return Text(block.text, style: textTheme.displayLarge);
      case BlockType.h2:
        return Text(block.text, style: textTheme.displayMedium);
      case BlockType.h3:
        return Text(block.text, style: textTheme.displaySmall);
      case BlockType.h4:
        return Text(block.text, style: textTheme.headlineMedium);
      case BlockType.h5:
        return Text(block.text, style: textTheme.headlineSmall);
      case BlockType.h6:
        return Text(block.text, style: textTheme.titleLarge);
      case BlockType.code:
        return Text(block.text, style: style);
      case BlockType.quote:
        return Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(4),
          ),
          child: Text(block.text, style: style),
        );
      default:
        return Text(block.text, style: style);
    }
  }
}
