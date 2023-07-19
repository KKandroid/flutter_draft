import 'package:flutter/cupertino.dart';

class InlineStyle {
  final int offset;
  final int length;
  final String style;

  InlineStyle.fromJson(Map<String, dynamic> json)
      : offset = json['offset'] ?? 0,
        length = json['length'] ?? 0,
        style = json['style'] ?? "";

  TextStyle addStyle(TextStyle oStyle) {
    if (style.contains("-")) {
      var field = style.split("-");
      switch (field[0].toUpperCase()) {
        case "COLOR":
          oStyle = oStyle.copyWith(color: Color(int.parse(field[1], radix: 16)));
          break;
        case "FONTSIZE":
          oStyle = oStyle.copyWith(fontSize: double.parse(field[1]));
          break;
        case "LETTERSPACING":
          oStyle = oStyle.copyWith(letterSpacing: double.parse(field[1]));
          break;
        case "LINEHEIGHT":
          oStyle = oStyle.copyWith(height: double.parse(field[1]));
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
}

class EntityRange {
  final int offset;
  final int length;
  final int key;

  EntityRange.fromJson(Map<String, dynamic> json)
      : offset = json['offset'] ?? 0,
        length = json['length'] ?? 0,
        key = json['int'] ?? 0;
}

class Data {
  static const String textAlignLeft = "left";
  static const String textAlignCenter = "center";
  static const String textAlignRight = "right";
  static const String textAlignJustify = "justify";

  /// 文本对齐方式
  final String? _textAlign;
  final int? _textIndent;

  /// 文本缩进
  double get textIndent => _textIndent?.toDouble() ?? 0;

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

  Data.fromJson(Map<String, dynamic> json)
      : _textAlign = json['textAlign'],
        _textIndent = json['textIndent'];
}
