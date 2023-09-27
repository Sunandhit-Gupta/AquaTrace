import 'package:flutter/material.dart';

class Tips extends StatefulWidget {
  const Tips({super.key});

  @override
  State<Tips> createState() => _TipsState();
}

List<String> tips_widgets = [

  "Fix Leaks Promptly: Even a small drip can waste significant amounts of water over time.",
"Use Water-Saving Appliances: Look for appliances and fixtures that are water-efficient.",
"Don’t Let the Tap Run: Don’t leave the tap running while brushing your teeth or washing dishes.",
"Water Plants Wisely: Water plants during the cooler parts of the day to reduce evaporation.",
"Use a Rain Barrel: Collect rainwater and use it to water your plants.",
"Take Shorter Showers: Reducing your shower time can save a lot of water.",
"Install a Dual-Flush Toilet: These toilets have two flush options - a half flush for liquid waste and a full flush for solid waste.",
"Reuse Greywater: If it’s safe and legal in your area, reuse greywater for things like watering plants or flushing toilets.",
"Use a Broom, Not a Hose: Use a broom to clean driveways, sidewalks, and patios rather than hosing them down.",
"Wash Full Loads: Only run your washing machine and dishwasher when you have a full load.",

"Remember, every drop counts! 💧",

];

class _TipsState extends State<Tips> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Card(
          elevation: 10,
          color: Colors.amber,
          child: ListTile(
            leading: Icon(Icons.tips_and_updates_outlined),
            title: Text("Tips"),
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
