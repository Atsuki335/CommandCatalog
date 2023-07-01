import 'package:flutter/material.dart';
import 'main.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Command Catalog',
      theme: ThemeData.light(),
      home: catalogPage(),
    );
  }
}

class catalogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SideNavigation(),
          VerticalDivider(
            thickness: 1,
            width: 1,
          ),
          Expanded(child: CommandText()),
        ],
      ),
    );
  }
}

class SideNavigation extends StatefulWidget {
  @override
  _SideNavigationState createState() => _SideNavigationState();
}

class _SideNavigationState extends State<SideNavigation> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
        selectedIndex: selectedIndex,
        onDestinationSelected: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        destinations: [
          NavigationRailDestination(
              icon: Icon(Icons.catching_pokemon), label: Text('commandLine')),
          NavigationRailDestination(
              icon: Icon(Icons.menu_book), label: Text('text')),
          NavigationRailDestination(
              icon: Icon(Icons.cruelty_free_outlined), label: Text('git')),
          NavigationRailDestination(
              icon: Icon(Icons.thumb_up_alt), label: Text('good')),
          NavigationRailDestination(
              icon: Icon(Icons.thumb_up_alt_outlined), label: Text('goodしてない')),
        ]);
  }
}

class ThumbCount extends StatefulWidget {
  @override
  _ThumbCountState createState() => _ThumbCountState();
}

class _ThumbCountState extends State<ThumbCount> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class CommandText extends StatelessWidget {
  List<String> itemsUp = [
    'echo<String>',
    'man<command>',
    'Item 3',
    'Item 4',
    'Item 5'
  ];
  List<String> itemsDown = [
    '画面に文字を出力',
    'コマンドのマニュアルページを\n 表示する',
    'Item 3',
    'Item 4',
    'Item 5'
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemsUp.length,
      itemBuilder: (context, index) {
        return Card(
          child: SizedBox(
            height: 120,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  ' ' + itemsUp[index],
                  style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'WakuWaku',
                      overflow: TextOverflow.ellipsis),
                ), // 上側のテキスト
                Divider(
                  color: Colors.grey,
                  thickness: 0.5,
                  indent: 0,
                  endIndent: 50,
                ), // 中央の水平線
                Text(' ' + itemsDown[index],
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'KiwiMaruM',
                    )), // 下側のテキスト
              ],
            ),
          ),
        );

        //child: Text(items[index]),
      },
    );
  }
}
