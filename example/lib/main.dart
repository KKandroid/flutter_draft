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
  final String json1 =
      "{\"blocks\":[{\"key\":\"8lvic\",\"text\":\"在购买Morgan Lending Limited发行的SETH资产债券之前，"
      "投资者应仔细考虑以下风险因素：\",\"type\":\"unstyled\",\"depth\":0,\"inlineStyleRanges\":[],"
      "\"entityRanges\":[],\"data\":{\"nodeAttributes\":{\"cid\":\"n34\",\"mdtype\":\"paragraph\",\"class\":\"md-end-"
      "block md-p md-focus\"},\"textAlign\":\"start\"}},{\"key\":\"4pds8\",\"text\":\"市场风险： SETH的市场价值可能会有显著"
      "波动，这可能会影响债券的价值和最终回报。\",\"type\":\"ordered-list-item\",\"depth\":0,\"inlineStyleRa"
      "nges\":[{\"offset\":0,\"length\":5,\"style\":\"BOLD\"}],\"entityRanges\":[],\"data\":{}},{\"key\":\"4980"
      "m\",\"text\":\"流动性风险： 债券的流动性可能受限，这意味着在需要时可能难以快速将债券转换为现金，或可能以低于市场价值的价格"
      "出售。\",\"type\":\"ordered-list-item\",\"depth\":0,\"inlineStyleRanges\":[{\"offset\":0,\"length\":6,\"style\":\"BOLD\"}],"
      "\"entityRanges\":[],\"data\":{}},{\"key\":\"ep9gt\",\"text\":\"信用风险： 债券的发行方Morgan Lending Limited的财"
      "务状况可能恶化，从而影响其支付利息和本金的能力。\",\"type\":\"ordered-list-item\",\"depth\":0,\"inlineStyleR"
      "anges\":[{\"offset\":0,\"length\":5,\"style\":\"BOLD\"}],\"entityRanges\":[],\"data\":{}},{\"key\":\"2ljll\",\"text\":\"利率"
      "风险： 经济条件的变化可能导致市场利率变动，从而影响债券的吸引力和市场价值。\",\"type\":\"ordered-list-item\",\"dep"
      "th\":0,\"inlineStyleRanges\":[{\"offset\":0,\"length\":5,\"style\":\"BOLD\"}],\"entityRanges\":[],\"data\":{}}"
      ",{\"key\":\"bbu0c\",\"text\":\"续期风险： 如果债券自动续期，新的债券条款可能因市场条件而有所不同，可能对投资回报产生不利影响。"
      "\",\"type\":\"ordered-list-item\",\"depth\":0,\"inlineStyleRanges\":[{\"offset\":0,\"length\":5,\"style\":\"BOLD\"}],"
      "\"entityRanges\":[],\"data\":{}},{\"key\":\"56nsf\",\"text\":\"法律和监管风险： 法律或监管环境的变化可能对债券持有者的权益产生不利影响。"
      "\",\"type\":\"ordered-list-item\",\"depth\":0,\"inlineStyleRanges\":[{\"offset\":0,\"length\":8,\"style\":\"BOLD\"}],"
      "\"entityRanges\":[],\"data\":{}},{\"key\":\"78pdh\",\"text\":\"投资者应确保了解所有相关的风险，并考虑自身的投资目标和风险承受能力后做出投资决定。建议在进行投资前咨询独立的财务顾问。\",\"type\":\"unstyled\",\"depth\":0,\"inlineStyleRanges\":[],\"entityRanges\":[],\"data\":{\"nodeAttributes\":{\"cid\":\"n49\",\"mdtype\":\"paragraph\",\"class\":\"md-end-block md-p md-focus\"},\"textAlign\":\"start\"}}],\"entityMap\":{}}";
  final json = {
    "blocks": [
      {
        "key": "du4k4",
        "text": "Risk Notification",
        "type": "unstyled",
        "depth": 0,
        "inlineStyleRanges": [
          {"offset": 0, "length": 17, "style": "BOLD"},
          {"offset": 0, "length": 17, "style": "FONTSIZE-10.5pt"}
        ],
        "entityRanges": [],
        "data": {
          "nodeAttributes": {"class": "MsoNormal"}
        }
      },
      {
        "key": "9oa3v",
        "text":
            "Dear Customer: We may encounter various risk factors while managing and operating this platform Therefore",
        "type": "unstyled",
        "depth": 0,
        "inlineStyleRanges": [
          {"offset": 0, "length": 188, "style": "FONTSIZE-10.5pt"},
          {"offset": 189, "length": 127, "style": "FONTSIZE-10.5pt"},
          {"offset": 167, "length": 7, "style": "BOLD"}
        ],
        "entityRanges": [],
        "data": {
          "nodeAttributes": {"class": "MsoNormal"}
        }
      },
      {
        "key": "9tfp2",
        "text":
            "1. Principal and Investment Return Risk: Due to the unique nature of the crypto digital asset trading industry,",
        "type": "unstyled",
        "depth": 0,
        "inlineStyleRanges": [
          {"offset": 0, "length": 385, "style": "FONTSIZE-10.5pt"}
        ],
        "entityRanges": [],
        "data": {
          "nodeAttributes": {"class": "MsoNormal"},
          "textIndent": 1
        }
      },
      {
        "key": "fid22",
        "text":
            "2. Policy Risk: Changes in macroeconomic policies (e.g., monetary policy, industry policy, and regulatory policy,etc.) may affect the normal trading ofcrypto,",
        "type": "unstyled",
        "depth": 0,
        "inlineStyleRanges": [
          {"offset": 0, "length": 296, "style": "FONTSIZE-10.5pt"}
        ],
        "entityRanges": [],
        "data": {
          "nodeAttributes": {"class": "MsoNormal"},
          "textIndent": 1
        }
      },
      {
        "key": "e9u1b",
        "text": "3. Compliance Risk: During the process of investing in the Product",
        "type": "unstyled",
        "depth": 0,
        "inlineStyleRanges": [
          {"offset": 0, "length": 171, "style": "FONTSIZE-10.5pt"}
        ],
        "entityRanges": [],
        "data": {
          "nodeAttributes": {"class": "MsoNormal"},
          "textIndent": 1
        }
      },
      {
        "key": "12vsk",
        "text": "4. Economic Cycle Risk: In line with the cyclical nature of economic performance",
        "type": "unstyled",
        "depth": 0,
        "inlineStyleRanges": [
          {"offset": 0, "length": 180, "style": "FONTSIZE-10.5pt"}
        ],
        "entityRanges": [],
        "data": {
          "nodeAttributes": {"class": "MsoNormal"},
          "textIndent": 1
        }
      },
      {
        "key": "a3n2a",
        "text": "5. Force Majeure Risk: The risk refers to the occurrence of force majeure factors including",
        "type": "unstyled",
        "depth": 0,
        "inlineStyleRanges": [
          {"offset": 0, "length": 447, "style": "FONTSIZE-10.5pt"},
          {"offset": 448, "length": 114, "style": "FONTSIZE-10.5pt"}
        ],
        "entityRanges": [],
        "data": {
          "nodeAttributes": {"class": "MsoNormal"},
          "textIndent": 1
        }
      },
      {
        "key": "2u0u1",
        "text":
            "6. Operational Risk: The risk arises from operational errors or violations of operational procedures by the user.",
        "type": "unstyled",
        "depth": 0,
        "inlineStyleRanges": [
          {"offset": 0, "length": 113, "style": "FONTSIZE-10.5pt"}
        ],
        "entityRanges": [],
        "data": {
          "nodeAttributes": {"class": "MsoNormal"},
          "textIndent": 1
        }
      },
      {
        "key": "dqdu0",
        "text":
            "7. Account Freezing Risk: The risk of judicial freezing or enforcement due to the user’s default on debts or suspicion of committing a criminal offence.",
        "type": "unstyled",
        "depth": 0,
        "inlineStyleRanges": [
          {"offset": 0, "length": 152, "style": "FONTSIZE-10.5pt"}
        ],
        "entityRanges": [],
        "data": {
          "nodeAttributes": {"class": "MsoNormal"},
          "textIndent": 1
        }
      },
      {
        "key": "cu376",
        "text": "8. Digital Assets Risk: In your jurisdiction, we may not be regulated as a financial in",
        "type": "unstyled",
        "depth": 0,
        "inlineStyleRanges": [
          {"offset": 0, "length": 295, "style": "FONTSIZE-10.5pt"}
        ],
        "entityRanges": [],
        "data": {
          "nodeAttributes": {"class": "MsoNormal"},
          "textIndent": 1
        }
      },
      {
        "key": "bu4mt",
        "text": "",
        "type": "unstyled",
        "depth": 0,
        "inlineStyleRanges": [],
        "entityRanges": [],
        "data": {
          "nodeAttributes": {"class": "MsoNormal"},
          "textIndent": 1
        }
      },
      {
        "key": "kbhk",
        "text":
            "The items disclosed in this Risk Notification have the nature of enumeration and cannot set out in full detail all the risks the users may face when participating in the Product or all factors that have the possibility to cause loss to users’ asset. Users should carefully read all the contents of this Risk Notification",
        "type": "unstyled",
        "depth": 0,
        "inlineStyleRanges": [
          {"offset": 0, "length": 865, "style": "FONTSIZE-10.5pt"}
        ],
        "entityRanges": [],
        "data": {
          "nodeAttributes": {"class": "MsoNormal"}
        }
      }
    ],
    "entityMap": {}
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: DraftTextView.jsonString(
        json1,
        defaultStyle: const TextStyle(fontSize: 12, color: Colors.black,overflow: TextOverflow.visible),
        padding: const EdgeInsets.symmetric(horizontal: 16),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
