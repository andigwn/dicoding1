import 'package:flutter/material.dart';

class SpacedItemList extends StatelessWidget {
  const SpacedItemList({super.key});

  @override
  Widget build(BuildContext context) {
    const items = 4;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Spaced Item List'),
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraints.maxHeight),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: List.generate(
                          items, (index) => ItemWidget(text: "Item $index")))),
            );
          },
        ));
  }
}

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 100,
        child: Center(child: Text(text)),
      ),
    );
  }
}
