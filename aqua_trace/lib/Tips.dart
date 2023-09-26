import 'package:flutter/material.dart';

class Tips extends StatefulWidget {
  const Tips({super.key});

  @override
  State<Tips> createState() => _TipsState();
}

List<Widget> tips_widgets = [
  Card(
            elevation: 10,
            color: Colors.amber,
            child: ListTile(
              leading: Icon(Icons.tips_and_updates_outlined),
              title: Text("Tips"),
            ),
          ),
          Card(
            elevation: 10,
            color: Colors.amber,
            child: ListTile(
              leading: Icon(Icons.tips_and_updates_outlined),
              title: Text("Tips"),
            ),
          ),
          Card(
            elevation: 10,
            color: Colors.amber,
            child: ListTile(
              leading: Icon(Icons.tips_and_updates_outlined),
              title: Text("Tips"),
            ),
          ),
          Card(
            elevation: 10,
            color: Colors.amber,
            child: ListTile(
              leading: Icon(Icons.tips_and_updates_outlined),
              title: Text("Tips"),
            ),
          ),
          Card(
            elevation: 10,
            color: Colors.amber,
            child: ListTile(
              leading: Icon(Icons.tips_and_updates_outlined),
              title: Text("Tips"),
            ),
          ),
          Card(
            elevation: 10,
            color: Colors.amber,
            child: ListTile(
              leading: Icon(Icons.tips_and_updates_outlined),
              title: Text("Tips"),
            ),
          ),
          Card(
            elevation: 10,
            color: Colors.amber,
            child: ListTile(
              leading: Icon(Icons.tips_and_updates_outlined),
              title: Text("Tips"),
            ),
          ),
          Card(
            elevation: 10,
            color: Colors.amber,
            child: ListTile(
              leading: Icon(Icons.tips_and_updates_outlined),
              title: Text("Tips"),
            ),
          ),
          Card(
            elevation: 10,
            color: Colors.amber,
            child: ListTile(
              leading: Icon(Icons.tips_and_updates_outlined),
              title: Text("Tips"),
            ),
          ),
          Card(
            elevation: 10,
            color: Colors.amber,
            child: ListTile(
              leading: Icon(Icons.tips_and_updates_outlined),
              title: Text("Tips"),
            ),
          ),
          Card(
            elevation: 10,
            color: Colors.amber,
            child: ListTile(
              leading: Icon(Icons.tips_and_updates_outlined),
              title: Text("Tips"),
            ),
          ),
          Card(
            elevation: 10,
            color: Colors.amber,
            child: ListTile(
              leading: Icon(Icons.tips_and_updates_outlined),
              title: Text("Tips"),
            ),
          ),

];

class _TipsState extends State<Tips> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child:  Column(
        children: [
          Card(
            elevation: 10,
            color: Colors.amber,
            child: ListTile(
              leading: Icon(Icons.tips_and_updates_outlined),
              title: Text("Tips"),
            ),
          ),
          Column(
            children: tips_widgets,
          )
        ],
      ),
    ));
  }
}
