import 'package:flutter/cupertino.dart';

class InlineStyle {
  final int offset;
  final int length;
  final String style;

  InlineStyle.fromJson(dynamic json)
      : offset = json['offset'] ?? 0,
        length = json['length'] ?? 0,
        style = json['style'] ?? "";

  TextStyle addStyle(TextStyle oStyle) {
    if (style.contains("-")) {
      var field = style.split("-");
      var value = field[1];
      var key = field[0];
      switch (key.toUpperCase()) {
        case "COLOR":
          oStyle = oStyle.copyWith(color: Color(int.parse("FF$value", radix: 16)));
          break;
        case "FONTSIZE":
          oStyle = oStyle.copyWith(fontSize: double.parse(value));
          break;
        case "LETTERSPACING":
          oStyle = oStyle.copyWith(letterSpacing: double.parse(value));
          break;
        case "LINEHEIGHT":
          oStyle = oStyle.copyWith(height: double.parse(value));
          break;
      }
    } else {
      switch (style.toLowerCase()) {
        case "bold":
          oStyle = oStyle.copyWith(fontWeight: FontWeight.bold);
          break;
        case "italic":
          oStyle = oStyle.copyWith(fontStyle: FontStyle.italic);
          break;
        case "underline":
          oStyle = oStyle.copyWith(decoration: TextDecoration.underline);
          break;
        case "strikethrough":
          oStyle = oStyle.copyWith(decoration: TextDecoration.lineThrough);
          break;
      }
    }
    return oStyle;
  }

  @override
  String toString() {
    return "range=[$offset, ${offset + length}], style = $style";
  }

  bool inRange(int index) => index >= offset && index < offset + length;
}

class EntityRange {
  final int offset;
  final int length;
  final int key;

  EntityRange.fromJson(dynamic json)
      : offset = json['offset'] ?? 0,
        length = json['length'] ?? 0,
        key = json['key'] ?? 0;
}

class Data {
  static const String textAlignLeft = "left";
  static const String textAlignCenter = "center";
  static const String textAlignRight = "right";
  static const String textAlignJustify = "justify";

  /// 文本对齐方式
  final String? _textAlign;
  final int? _textIndent;

  /// 有序列表编号
  int? _number;

  set number(int value) {
    _number = value;
  }

  int get number => _number ?? 0;

  /// 文本缩进
  int get textIndent => _textIndent ?? 0;

  TextAlign get textAlign {
    switch (_textAlign) {
      case textAlignLeft:
        return TextAlign.left;
      case textAlignCenter:
        return TextAlign.center;
      case textAlignRight:
        return TextAlign.right;
      case textAlignJustify:
        return TextAlign.justify;
      default:
        return TextAlign.left;
    }
  }

  bool get isEmpty {
    return _textAlign == null && _textIndent == null;
  }

  Data.fromJson(dynamic json)
      : _textAlign = json['textAlign'],
        _textIndent = json['textIndent'];
}

/// {"type": "HR", "mutability": "IMMUTABLE", "data": {}
class Entity {
  final String? type;
  final EntityData data;
  final String? mutability;

  Entity.fromJson(dynamic json)
      : type = json['type'],
        data = EntityData.fromJson(json['data']),
        mutability = json['mutability'];
}

class EntityData {
  final String? url;
  final String? name;
  final String? href;
  final String? type;
  final String? target;

  EntityData.fromJson(dynamic json)
      : url = json['url'],
        name = json['name'],
        href = json['href'],
        type = json['type'],
        target = json['target'];
}
