import 'package:flutter/material.dart';

class ListVertikalPak extends StatelessWidget {
  const ListVertikalPak({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = "List Vertikal Basic";
    return Scaffold(
      appBar: AppBar(
        title: const Text(appTitle),
        centerTitle: true,
      ),
      body: ListView(
        children: const <Widget>[
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
          ),
          ListTile(
            leading: Icon(Icons.map),
            title: Text("Map"),
          ),
          ListTile(
            leading: Icon(Icons.photo_album),
            title: Text("Album"),
          ),
        ],
      ),
    );
  }
}
