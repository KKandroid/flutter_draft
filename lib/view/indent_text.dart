import 'package:flutter/material.dart';

extension TextIndent on Text {
  Text indent(int indent) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(text: " " * indent, style: style),
          TextSpan(text: data, style: style),
        ],
      ),
    );
  }
}
