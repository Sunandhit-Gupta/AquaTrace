import 'dart:math';

import 'package:flutter/material.dart';

import 'tipsDatabase.dart';

class Tips extends StatefulWidget {
  const Tips({super.key});

  @override
  State<Tips> createState() => _TipsState();
}

class _TipsState extends State<Tips> {
  final random = Random().nextInt(tips_widgets.length);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Card(
          elevation: 10,
          color: Colors.amber,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Icon(Icons.tips_and_updates_outlined),
              title: Text(
                "Tip of the day.",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              subtitle: Text(tips_widgets[random]),
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: tips_widgets.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                elevation: 5,
                color: Color.fromARGB(255, 221, 205, 157),
                child: ListTile(
                  leading: Icon(Icons.tips_and_updates_outlined),
                  title: Text(tips_widgets[index]),
                ),
              );
            },
          ),
        ),
      ],
    ));
  }
}
