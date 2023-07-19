import 'package:flutter/cupertino.dart';

import 'inline_style.dart';

class DraftData {
  final List<Block> blocks = [];
  final Map<String, dynamic> entityMap = {};

  DraftData.fromJson(dynamic json) {
    if (json['blocks'] != null) {
      json['blocks'].forEach((v) {
        blocks.add(Block.fromJson(v));
      });
    }
    if (json['entityMap'] != null) {
      json['entityMap'].forEach((k, v) {
        entityMap[k] = Entity.fromJson(v);
      });
    }
  }
}

class Entity {
  final String type;
  final dynamic data;

  Entity.fromJson(Map<String, dynamic> json)
      : type = json['type'] ?? "",
        data = json['data'] ?? {};
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
  List<dynamic>? _entityRanges;
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
      json['entityRanges'].forEach((v) {});
    }
    if (json['data'] != null) {
      _data = Data.fromJson(json['data']);
    }
  }

  Data get data => _data ?? Data.fromJson({});

  String get key => _key ?? "";

  String get text => _text ?? "";

  String get type => _type ?? "";

  int? get depth => _depth;

  List<InlineStyle> get inlineStyleRanges => _inlineStyleRanges ?? [];

  List<dynamic>? get entityRanges => _entityRanges;
}
