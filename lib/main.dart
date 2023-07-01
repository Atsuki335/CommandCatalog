import 'package:flutter/material.dart';
import 'catalogPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: titlePage(),
    );
  }
}

class titlePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 212, 212),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            ColoredText("こまんどかたろぐ"),
            SizedBox(
                width: 500,
                height: 300,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return catalogPage();
                    }));
                  },
                  child: Image.asset('images/oshite.PNG'),
                ))
          ]),
        ));
  }
}

//タイトル文字交互に色変え用
class ColoredText extends StatelessWidget {
  final String text;

  ColoredText(this.text);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: DefaultTextStyle.of(context).style,
        children: text.split('').asMap().entries.map((entry) {
          final color = entry.key % 2 == 0
              ? Color.fromARGB(255, 255, 104, 104)
              : Color.fromARGB(255, 246, 140, 140);
          return TextSpan(
              text: entry.value,
              style: TextStyle(
                  color: color, fontSize: 65, fontFamily: 'CherryBomb'));
        }).toList(),
      ),
    );
  }
}
