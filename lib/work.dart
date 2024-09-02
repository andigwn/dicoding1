import 'package:flutter/material.dart';

class Work extends StatelessWidget {
  final List<String> items;
  const Work({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Long List"),
      ),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(items[index]),
            );
          }),
    );
  }
}
