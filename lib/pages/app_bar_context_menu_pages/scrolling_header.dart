import 'package:flutter/material.dart';

class ScrollingHeaderExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Expanding & Collapsing Header', home: MainScreen());
  }
}

/// This is the stateless widget that the main application instantiates.
class MainScreen extends StatelessWidget {
  final data = ['One', 'Two', 'Three', 'Four', 'Five', 'Six', 'Seven', 'Eight', 'Nine', 'Ten'];
  //final data = ['One'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: <Widget>[
      SliverAppBar(
          pinned: true,
          expandedHeight: 250.0,
          flexibleSpace: FlexibleSpaceBar(
              title:  Text('Collapsing Header'),
              background: MyFlexiableAppBar())),
      SliverList(
          delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Container(
            alignment: Alignment.center,
            height: 100,
            color: Colors.red[100],
            child: Text('${data[index]}'),
          );
        },
        childCount: data.length,
      ))
    ]));
  }

  Widget getBackGround() {
    return Row(children: [
      Expanded(child: TextButton(onPressed: () => {}, child: Text("1111"))),
      Expanded(child: TextButton(onPressed: () => {}, child: Text("222"))),
      Expanded(child: TextButton(onPressed: () => {}, child: Text("333"))),
    ]);
  }
}

class MyFlexiableAppBar extends StatelessWidget {
  final double appBarHeight = 66.0;

  const MyFlexiableAppBar();

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;

    return Container(
        padding: new EdgeInsets.only(top: statusBarHeight),
        height: statusBarHeight + appBarHeight,
        child: Center(
            child: Column(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                TextButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.red),
                        foregroundColor: MaterialStateProperty.all(Colors.white)),
                    onPressed: () => {},
                    child: Text("1111")),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.access_time_filled_sharp),
                ),
              ],
            ),
          ),
        ])));
  }
}
