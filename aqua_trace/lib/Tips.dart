import 'package:flutter/material.dart';

import 'tipsDatabase.dart';

class Tips extends StatefulWidget {
  const Tips({super.key});

  @override
  State<Tips> createState() => _TipsState();
}

class _TipsState extends State<Tips> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const Card(
          elevation: 10,
          color: Colors.amber,
          child: ListTile(
            leading: Icon(Icons.tips_and_updates_outlined),
            title: Text(
              "Tips",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: tips_widgets.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                elevation: 10,
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
