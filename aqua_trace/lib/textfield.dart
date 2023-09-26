import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWidget extends StatefulWidget {
  @override
  _TextIn createState() => _TextIn();
}

class _TextIn extends State<TextWidget> {
  // List to store items
  List<String> items = ['default'];
  List<String> listItems = ['apple', 'bananana', 'book'];
  var temp = '';
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Autocomplete<String>(
          optionsBuilder: (TextEditingValue textinput) {
            temp = textinput.text;
            if (textinput.text == '') {
              return const Iterable<String>.empty();
            }
            return listItems.where((String item) {
              return item.contains(textinput.text.toLowerCase());
            });
          },
        ),
        // Text field for input

        // Button to add to the list
        TextButton(
          onPressed: () {
            String newItem = temp.trim();
            if (newItem.isNotEmpty) {
              setState(() {
                items.add(newItem);
                textController.clear();
              });
            }
          },
          child: Text('Add'),
          style: TextButton.styleFrom(
            textStyle: const TextStyle(fontSize: 20),
          ),
        ),

        // List to display items
        Expanded(
          child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(items[index]),
              );
            },
          ),
        ),
      ],
    );
  }
}
