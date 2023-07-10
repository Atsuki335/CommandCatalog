import 'package:flutter/material.dart';
import 'main.dart';
import 'itemList.dart';

class catalogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: SideNavigation(),
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
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 234, 234),
        body: Row(
          children: [
            NavigationRail(
              backgroundColor: Color.fromARGB(79, 245, 221, 221),
              selectedIndex: selectedIndex,
              onDestinationSelected: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
              destinations: [
                NavigationRailDestination(
                  icon: Icon(Icons.catching_pokemon),
                  label: Text('commandLine'),
                ),
                NavigationRailDestination(
                    icon: Icon(Icons.menu_book), label: Text('text1')),
                NavigationRailDestination(
                    icon: Icon(Icons.cruelty_free_outlined),
                    label: Text('text2')),
                NavigationRailDestination(
                    icon: Icon(Icons.food_bank), label: Text('text3')),
                NavigationRailDestination(
                    icon: Icon(Icons.thumb_up_alt), label: Text('good')),
                NavigationRailDestination(
                    icon: Icon(Icons.thumb_up_alt_outlined),
                    label: Text('goodしてない')),
              ],
            ),
            VerticalDivider(
              thickness: 1,
              width: 1,
            ),
            Expanded(
              child: ListPage(selectedIndex: selectedIndex),
            ),
          ],
        ));
  }
}

@override
Widget ModelToWidget(Inside model) {
  final itemsUpText = Container(
    padding: const EdgeInsets.all(8),
    alignment: Alignment.centerLeft,
    child: Text(
      '${model.itemsUp}',
      style: TextStyle(
          color: Color.fromARGB(255, 218, 114, 114),
          fontSize: 25,
          fontFamily: 'WakuWaku',
          overflow: TextOverflow.clip),
    ),
  );
  final divider = Divider(
    color: Colors.grey,
    thickness: 0.5,
    indent: 0,
    endIndent: 50,
  );
  final itemsDownText = Container(
      padding: const EdgeInsets.all(8),
      alignment: Alignment.centerLeft,
      child: Text('${model.itemsDown}',
          style: TextStyle(
              fontSize: 20,
              fontFamily: 'KiwiMaruM',
              overflow: TextOverflow.clip))); // 下側のテキスト
  return Card(
      child: SizedBox(
          height: 140,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [itemsUpText, divider, itemsDownText])));
}

class ListPage extends StatefulWidget {
  final int selectedIndex;

  ListPage({Key? key, this.selectedIndex = 0}) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
//全体の構成
  @override
  Widget build(BuildContext context) {
    final navState = context.findAncestorStateOfType<_SideNavigationState>();
    List<Inside> contentList;
    switch (widget.selectedIndex) {
      case 0:
        contentList = pokemonModels;
        break;
      case 1:
        contentList = bookModels;
        break;
      case 2:
        contentList = rabbitModels;
        break;
      case 3:
        contentList = foodModels;
        break;
      default:
        contentList = [];
        break;
    }
    return ListView.builder(
      itemCount: contentList.length,
      itemBuilder: (context, index) {
        return ModelToWidget(contentList[index]);
      },
    );
  }
}
