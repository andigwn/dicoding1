import 'package:flutter/material.dart';

class ListHorizontalPak extends StatelessWidget {
  const ListHorizontalPak({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = "List Horizontal Basic";
    return Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
        body: Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            height: 200,
            child: ListView(
                scrollDirection: Axis.horizontal,
                children: const <Widget>[
                  SizedBox(
                    width: 160,
                    child: Icon(
                      Icons.home,
                    ),
                  ),
                  SizedBox(
                    width: 160,
                    child: Icon(Icons.location_city),
                  ),
                  SizedBox(
                    width: 160,
                    child: Icon(
                      Icons.map,
                    ),
                  ),
                  SizedBox(
                    width: 160,
                    child: Icon(
                      Icons.airplanemode_on,
                    ),
                  ),
                  SizedBox(
                    width: 160,
                    child: Icon(
                      Icons.camera,
                    ),
                  ),
                ])));
  }
}
