import 'package:flutter/material.dart';
import 'package:flutter_draft/flutter_draft.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final json = {
    "blocks": [
      {
        "key": "5tgf2",
        "text": "普通文本段落",
        "type": "unstyled",
        "depth": 0,
        "inlineStyleRanges": [],
        "entityRanges": [],
        "data": {}
      },
      {
        "key": "1brd2",
        "text": "设置字号，行高，字间距。",
        "type": "unstyled",
        "depth": 0,
        "inlineStyleRanges": [
          {"offset": 2, "length": 2, "style": "FONTSIZE-30"},
          {"offset": 5, "length": 2, "style": "LINEHEIGHT-4"},
          {"offset": 8, "length": 3, "style": "LETTERSPACING-6"}
        ],
        "entityRanges": [],
        "data": {}
      },
      {
        "key": "ff65a",
        "text": "文字颜色，加粗，斜体，下划线，删除线。",
        "type": "unstyled",
        "depth": 0,
        "inlineStyleRanges": [
          {"offset": 0, "length": 4, "style": "COLOR-07A9FE"},
          {"offset": 5, "length": 2, "style": "BOLD"},
          {"offset": 8, "length": 2, "style": "ITALIC"},
          {"offset": 11, "length": 3, "style": "UNDERLINE"},
          {"offset": 15, "length": 3, "style": "STRIKETHROUGH"}
        ],
        "entityRanges": [],
        "data": {}
      },
      {
        "key": "dvdud",
        "text": "缩进：",
        "type": "unstyled",
        "depth": 0,
        "inlineStyleRanges": [],
        "entityRanges": [],
        "data": {}
      },
      {
        "key": "a7unr",
        "text": "缩进一次",
        "type": "unstyled",
        "depth": 0,
        "inlineStyleRanges": [],
        "entityRanges": [],
        "data": {"textIndent": 1}
      },
      {
        "key": "59a47",
        "text": "缩进两次",
        "type": "unstyled",
        "depth": 0,
        "inlineStyleRanges": [],
        "entityRanges": [],
        "data": {"textIndent": 2}
      },
      {
        "key": "2crnd",
        "text": "对齐：",
        "type": "unstyled",
        "depth": 0,
        "inlineStyleRanges": [],
        "entityRanges": [],
        "data": {}
      },
      {
        "key": "d7c1o",
        "text": "左对齐",
        "type": "unstyled",
        "depth": 0,
        "inlineStyleRanges": [],
        "entityRanges": [],
        "data": {"textAlign": "left"}
      },
      {
        "key": "5o0o3",
        "text": "居中",
        "type": "unstyled",
        "depth": 0,
        "inlineStyleRanges": [],
        "entityRanges": [],
        "data": {"textAlign": "center"}
      },
      {
        "key": "bh9eg",
        "text": "右对齐",
        "type": "unstyled",
        "depth": 0,
        "inlineStyleRanges": [],
        "entityRanges": [],
        "data": {"textAlign": "right"}
      },
      {
        "key": "43af1",
        "text": "两端对齐两端对齐两端对齐两端对齐两端对齐两端对齐两端对齐两端对齐两端对齐",
        "type": "unstyled",
        "depth": 0,
        "inlineStyleRanges": [],
        "entityRanges": [],
        "data": {"textAlign": "justify"}
      },
      {
        "key": "26svh",
        "text": "标题：",
        "type": "unstyled",
        "depth": 0,
        "inlineStyleRanges": [],
        "entityRanges": [],
        "data": {}
      },
      {
        "key": "7c61l",
        "text": "标题一",
        "type": "header-one",
        "depth": 0,
        "inlineStyleRanges": [],
        "entityRanges": [],
        "data": {}
      },
      {
        "key": "49hvv",
        "text": "标题二",
        "type": "header-two",
        "depth": 0,
        "inlineStyleRanges": [],
        "entityRanges": [],
        "data": {}
      },
      {
        "key": "9nf73",
        "text": "标题三",
        "type": "header-three",
        "depth": 0,
        "inlineStyleRanges": [],
        "entityRanges": [],
        "data": {}
      },
      {
        "key": "fcnpu",
        "text": "标题四",
        "type": "header-four",
        "depth": 0,
        "inlineStyleRanges": [],
        "entityRanges": [],
        "data": {}
      },
      {
        "key": "3nni8",
        "text": "标题五",
        "type": "header-five",
        "depth": 0,
        "inlineStyleRanges": [],
        "entityRanges": [],
        "data": {}
      },
      {
        "key": "27hdt",
        "text": "标题六",
        "type": "header-six",
        "depth": 0,
        "inlineStyleRanges": [],
        "entityRanges": [],
        "data": {}
      },
      {
        "key": "aah65",
        "text": "无序列表：",
        "type": "unstyled",
        "depth": 0,
        "inlineStyleRanges": [],
        "entityRanges": [],
        "data": {}
      },
      {
        "key": "36f85",
        "text": "条目 1",
        "type": "unordered-list-item",
        "depth": 0,
        "inlineStyleRanges": [],
        "entityRanges": [],
        "data": {}
      },
      {
        "key": "f31b6",
        "text": "条目 2",
        "type": "unordered-list-item",
        "depth": 0,
        "inlineStyleRanges": [],
        "entityRanges": [],
        "data": {}
      },
      {
        "key": "fv8qc",
        "text": "条目 3",
        "type": "unordered-list-item",
        "depth": 0,
        "inlineStyleRanges": [],
        "entityRanges": [],
        "data": {}
      },
      {
        "key": "ave0t",
        "text": "有序列表",
        "type": "unstyled",
        "depth": 0,
        "inlineStyleRanges": [],
        "entityRanges": [],
        "data": {}
      },
      {
        "key": "6ohov",
        "text": "条目 1",
        "type": "ordered-list-item",
        "depth": 0,
        "inlineStyleRanges": [],
        "entityRanges": [],
        "data": {}
      },
      {
        "key": "77a10",
        "text": "条目 2",
        "type": "ordered-list-item",
        "depth": 0,
        "inlineStyleRanges": [],
        "entityRanges": [],
        "data": {}
      },
      {
        "key": "cqrba",
        "text": "条目 3",
        "type": "ordered-list-item",
        "depth": 0,
        "inlineStyleRanges": [],
        "entityRanges": [],
        "data": {}
      },
      {
        "key": "74tge",
        "text": "引用",
        "type": "blockquote",
        "depth": 0,
        "inlineStyleRanges": [],
        "entityRanges": [],
        "data": {}
      },
      {
        "key": "amv2s",
        "text": "import 'package:flutter/material.dart';\n"
            "import 'package:flutter_draft/flutter_draft.dart';\n"
            "\n"
            "void main() => runApp(MyApp());\n"
            "            padding: EdgeInsets.symmetric(horizontal: 8.dp, vertical: 12.dp),\n"
            "\n",

        "type": "code-block",
        "depth": 0,
        "inlineStyleRanges": [],
        "entityRanges": [],
        "data": {}
      },
      {
        "key": "7gfsi",
        "text": "超链接",
        "type": "unstyled",
        "depth": 0,
        "inlineStyleRanges": [],
        "entityRanges": [
          {"offset": 0, "length": 3, "key": 0}
        ],
        "data": {}
      },
      {
        "key": "4fr0k",
        "text": "item 1",
        "type": "unordered-list-item",
        "depth": 0,
        "inlineStyleRanges": [],
        "entityRanges": [],
        "data": {}
      },
      {
        "key": "5c0l4",
        "text": "item 2",
        "type": "unordered-list-item",
        "depth": 0,
        "inlineStyleRanges": [],
        "entityRanges": [],
        "data": {}
      },
      {
        "key": "151gn",
        "text": "item 2-1",
        "type": "unordered-list-item",
        "depth": 1,
        "inlineStyleRanges": [],
        "entityRanges": [],
        "data": {}
      },
      {
        "key": "56j87",
        "text": "item 2-2",
        "type": "unordered-list-item",
        "depth": 1,
        "inlineStyleRanges": [],
        "entityRanges": [],
        "data": {}
      },
      {
        "key": "5f2vc",
        "text": "item 3",
        "type": "unordered-list-item",
        "depth": 0,
        "inlineStyleRanges": [],
        "entityRanges": [],
        "data": {}
      },
      {
        "key": "ebcp7",
        "text": "item 3-1",
        "type": "unordered-list-item",
        "depth": 1,
        "inlineStyleRanges": [],
        "entityRanges": [],
        "data": {}
      },
      {
        "key": "5p1md",
        "text": "item 3-2",
        "type": "unordered-list-item",
        "depth": 1,
        "inlineStyleRanges": [],
        "entityRanges": [],
        "data": {}
      },
      {
        "key": "aao1f",
        "text": "",
        "type": "unstyled",
        "depth": 0,
        "inlineStyleRanges": [],
        "entityRanges": [],
        "data": {}
      },
      {
        "key": "coleb",
        "text": "item 1",
        "type": "ordered-list-item",
        "depth": 0,
        "inlineStyleRanges": [],
        "entityRanges": [],
        "data": {}
      },
      {
        "key": "7f3r",
        "text": "item 2",
        "type": "ordered-list-item",
        "depth": 0,
        "inlineStyleRanges": [],
        "entityRanges": [],
        "data": {}
      },
      {
        "key": "460hj",
        "text": "item 2-1",
        "type": "ordered-list-item",
        "depth": 1,
        "inlineStyleRanges": [],
        "entityRanges": [],
        "data": {}
      },
      {
        "key": "99bj1",
        "text": "item 2-2",
        "type": "ordered-list-item",
        "depth": 1,
        "inlineStyleRanges": [],
        "entityRanges": [],
        "data": {}
      },
      {
        "key": "3p7gv",
        "text": "item 3",
        "type": "ordered-list-item",
        "depth": 0,
        "inlineStyleRanges": [],
        "entityRanges": [],
        "data": {}
      },
      {
        "key": "aqk2s",
        "text": "item 3-1",
        "type": "ordered-list-item",
        "depth": 1,
        "inlineStyleRanges": [],
        "entityRanges": [],
        "data": {}
      },
      {
        "key": "884sk",
        "text": "item 3-2",
        "type": "ordered-list-item",
        "depth": 1,
        "inlineStyleRanges": [],
        "entityRanges": [],
        "data": {}
      },
      {
        "key": "4teh1",
        "text": "",
        "type": "unstyled",
        "depth": 0,
        "inlineStyleRanges": [],
        "entityRanges": [],
        "data": {}
      },
      {
        "key": "agvka",
        "text": "下方插入一条水平线：",
        "type": "unstyled",
        "depth": 0,
        "inlineStyleRanges": [],
        "entityRanges": [],
        "data": {}
      },
      {
        "key": "42rei",
        "text": " ",
        "type": "atomic",
        "depth": 0,
        "inlineStyleRanges": [],
        "entityRanges": [
          {"offset": 0, "length": 1, "key": 1}
        ],
        "data": {}
      },
      {
        "key": "14i7c",
        "text": "",
        "type": "unstyled",
        "depth": 0,
        "inlineStyleRanges": [],
        "entityRanges": [],
        "data": {}
      },
      {
        "key": "djjtj",
        "text": " ",
        "type": "atomic",
        "depth": 0,
        "inlineStyleRanges": [],
        "entityRanges": [
          {"offset": 0, "length": 1, "key": 2}
        ],
        "data": {}
      },
      {
        "key": "f50m",
        "text": "",
        "type": "unstyled",
        "depth": 0,
        "inlineStyleRanges": [],
        "entityRanges": [],
        "data": {}
      },
      {
        "key": "92re1",
        "text": "",
        "type": "unstyled",
        "depth": 0,
        "inlineStyleRanges": [],
        "entityRanges": [],
        "data": {}
      },
      {
        "key": "5v038",
        "text": "文字",
        "type": "unstyled",
        "depth": 0,
        "inlineStyleRanges": [],
        "entityRanges": [],
        "data": {}
      },
      {
        "key": "63ajs",
        "text": "",
        "type": "unstyled",
        "depth": 0,
        "inlineStyleRanges": [],
        "entityRanges": [],
        "data": {}
      },
      {
        "key": "9npj0",
        "text": "",
        "type": "unstyled",
        "depth": 0,
        "inlineStyleRanges": [],
        "entityRanges": [],
        "data": {}
      }
    ],
    "entityMap": {
      "0": {
        "type": "LINK",
        "mutability": "MUTABLE",
        "data": {"href": "https://www.baidu.com/", "target": ""}
      },
      "1": {"type": "HR", "mutability": "IMMUTABLE", "data": {}},
      "2": {
        "type": "IMAGE",
        "mutability": "IMMUTABLE",
        "data": {
          "url":
              "https://flutter.github.io/assets-for-api-docs/assets/painting/box_fit_scaleDown.png",
          "name": "App 借贷.png",
          "type": "IMAGE",
          "meta": {"id": "1689665708567_2"}
        }
      }
    }
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: DraftTextView.json(json), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
