import 'package:flutter/material.dart';

class CustomScrollViewBasic extends StatefulWidget {
  const CustomScrollViewBasic({super.key});

  @override
  State<CustomScrollViewBasic> createState() => _CustomScrollViewBasicState();
}

class _CustomScrollViewBasicState extends State<CustomScrollViewBasic> {
  List<int> top = <int>[];
  List<int> bottom = <int>[0];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Demo"),
          leading: IconButton(
              onPressed: () {
                setState(() {
                  top.add(-top.length - 1);
                  bottom.add(bottom.length);
                });
              },
              icon: const Icon(Icons.add)),
          centerTitle: true,
        ),
        body: CustomScrollView(
          slivers: <Widget>[
            const SliverAppBar(
              pinned: true,
              expandedHeight: 250.0,
              flexibleSpace: FlexibleSpaceBar(
                title: Text('Demo'),
                background: Image(
                  image: AssetImage('assets/image/car.png'),
                ),
              ),
            ),
            SliverGrid(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200.0,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 4.0,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                    alignment: Alignment.center,
                    color: Colors.teal[100 * (index % 9)],
                    child: Text('Grid Item $index'),
                  );
                },
                childCount: 20,
              ),
            ),
            SliverFixedExtentList(
              itemExtent: 50.0,
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                    alignment: Alignment.center,
                    color: Colors.lightBlue[100 * (index % 9)],
                    child: Text('List Item $index'),
                  );
                },
              ),
            ),
          ],
        ));
  }
}
