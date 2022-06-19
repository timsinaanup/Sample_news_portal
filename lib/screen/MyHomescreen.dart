import 'package:app_new/datas.dart';
import 'package:app_new/widgets/newsCard.dart';
import 'package:flutter/material.dart';

class MyHomescreen extends StatefulWidget {
  const MyHomescreen({Key? key}) : super(key: key);

  @override
  State<MyHomescreen> createState() => _MyHomescreenState();
}

class _MyHomescreenState extends State<MyHomescreen> {
  // get scrollDirection => Axis.vertical;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: TAB_BAR_DATA.length,
      child: Scaffold(
        appBar: AppBar(
          titleTextStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          title: Text("TabBar"),
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              ...TAB_BAR_DATA.map((e) => Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      e['name'].toString(),
                      style: const TextStyle(fontSize: 15),
                    ),
                  )),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ...TAB_BAR_DATA.map((e) => ListView(
                  children: [
                    ...[1, 2, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
                        .map((e) => NewsCard()),
                    // scrollDirection: axis.Axis.vertical,
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
