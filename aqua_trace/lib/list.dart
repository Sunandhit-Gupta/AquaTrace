import 'package:flutter/material.dart';

class list extends StatefulWidget {
  const list({Key? key}) : super(key: key);

  @override
  State<list> createState() => _listState();
}

class _listState extends State<list> {
  final List<String> data = const [
    'one',
    'two',
    'one',
    'two',
    'one',
    'two',
    'one',
    'two',
    'one',
    'two',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return const Card(
                  color: Colors.amber,
                  elevation: 5,
                  child: ListTile(
                    title: Text('Item'),
                  ),
                );
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(35.0, 15.0, 35.0, 0.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    'total',
                  ),
                ),
                Card(
                  color: Colors.amberAccent,
                  child: Expanded(
                    child: Text(
                      'number',
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
