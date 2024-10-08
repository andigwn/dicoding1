import 'package:flutter/material.dart';

class CustomScrollViewExample extends StatefulWidget {
  const CustomScrollViewExample({super.key});

  @override
  State<CustomScrollViewExample> createState() =>
      _CustomScrollViewExampleState();
}

class _CustomScrollViewExampleState extends State<CustomScrollViewExample> {
  List<int> top = <int>[];
  List<int> bottom = <int>[0];
  @override
  Widget build(BuildContext context) {
    const Key centerKey = ValueKey<String>("bottom-silver-list");
    return Scaffold(
        appBar: AppBar(
          title: const Text("Press on the plus to add items above and below"),
          leading: IconButton(
              onPressed: () {
                setState(() {
                  top.add(-top.length - 1);
                  bottom.add(bottom.length);
                });
              },
              icon: const Icon(Icons.add)),
        ),
        body: CustomScrollView(center: centerKey, slivers: <Widget>[
          SliverList(
              delegate:
                  SliverChildBuilderDelegate((BuildContext context, index) {
            return Container(
              alignment: Alignment.center,
              color: Colors.blue[200 + top[index] % 4 * 100],
              height: 100 + top[index] % 4 * 20.0,
              child: Text('Item: ${top[index]}'),
            );
          }, childCount: top.length)),
          SliverList(
            key: centerKey,
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.blue[200 + bottom[index] % 4 * 100],
                height: 100 + bottom[index] % 4 * 20.0,
                child: Text('Item: ${bottom[index]}'),
              );
            }, childCount: bottom.length),
          )
        ]));
  }
}
