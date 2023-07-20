import 'package:flutter/cupertino.dart';

import '../type/block_type.dart';
import 'inline_style.dart';

class DraftData {
  final List<Block> blocks = [];
  final Map<String, Entity> entityMap = {};
  int maxDepth = 0;

  DraftData.fromJson(dynamic json) {
    if (json['blocks'] != null) {
      json['blocks'].forEach((v) {
        var block = Block.fromJson(v);
        blocks.add(block);
        if (block.depth > maxDepth) {
          maxDepth = block.depth;
        }
      });
    }
    if (json['entityMap'] != null) {
      json['entityMap'].forEach((k, v) {
        entityMap[k] = Entity.fromJson(v);
      });
    }
    dealNumberList();
  }

  void dealNumberList() {
    List<int> numbers = List.filled(maxDepth + 1, 0);
    int curDepth = 0;
    for (var block in blocks) {
      if (block.type == BlockType.numberList) {
        var depth = block.depth;
        if (curDepth < depth) {
          curDepth = depth;
        } else if (curDepth > depth) {
          for (int i = curDepth; i > depth; i--) {
            numbers[i] = 0;
          }
          curDepth = depth;
        }
        var curNumber = numbers[curDepth];
        numbers[curDepth] = curNumber + 1;
        block.data.number = numbers[curDepth];
      } else {
        numbers = List.filled(maxDepth + 1, 0);
        curDepth = 0;
      }
    }
  }
}

class Block {
  /// key
  String? _key;

  /// 文本
  String? _text;

  /// 类型
  String? _type;

  /// 深度
  int? _depth;
  List<InlineStyle>? _inlineStyleRanges;
  List<EntityRange>? _entityRanges;
  Data? _data;

  Block.fromJson(dynamic json) {
    _key = json['key'];
    _text = json['text'];
    _type = json['type'];
    _depth = json['depth'];
    if (json['inlineStyleRanges'] != null) {
      _inlineStyleRanges = [];
      json['inlineStyleRanges'].forEach((v) {
        _inlineStyleRanges?.add(InlineStyle.fromJson(v));
      });
    }
    if (json['entityRanges'] != null) {
      _entityRanges = [];
      json['entityRanges'].forEach((v) {
        _entityRanges?.add(EntityRange.fromJson(v));
      });
    }
    if (json['data'] != null) {
      _data = Data.fromJson(json['data']);
    }
  }

  Data get data => _data ?? Data.fromJson({});

  String get key => _key ?? "";

  String get text => _text ?? "";

  String get type => _type ?? "";

  int get depth => _depth ?? 0;

  List<InlineStyle> get inlineStyle => _inlineStyleRanges ?? [];

  List<MapEntry<String, TextStyle>> textStyleMap(TextStyle oStyle) {
    List<MapEntry<String, TextStyle>> result = [];

    /// 创建长度为text.length的List
    if (inlineStyle.isEmpty || text.isEmpty) {
      return result;
    }
    // 字符串分割点及命中的样式角标
    Map<int, List<int>> splitPoint = {};
    List<int>? temp;
    for (int i = 0; i < text.length; i++) {
      var range = <int>[];
      for (int j = 0; j < inlineStyle.length; j++) {
        var styleRange = inlineStyle[j];
        if (styleRange.inRange(i)) {
          range.add(j);
        }
      }
      if (range.toString() != temp.toString()) {
        temp = range;
        splitPoint[i] = temp;
      }
    }
    //遍历splitPoint 切割并生成样式
    List<int> keys = splitPoint.keys.toList();
    for (int i = 0; i < keys.length; i++) {
      var start = keys[i];
      List<int> style = splitPoint[start] ?? [];
      var end = (i == keys.length - 1) ? text.length : keys[i + 1];
      var substring = text.substring(start, end);
      var sty = oStyle.copyWith();
      for (var j in style) {
        sty = inlineStyle[j].addStyle(sty);
      }
      result.add(MapEntry(substring, sty));
    }
    return result;
  }

  List<EntityRange> get entityRanges => _entityRanges ?? [];
}
