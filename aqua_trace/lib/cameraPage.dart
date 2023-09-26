import 'package:aqua_trace/calculatorPage.dart';
import 'package:aqua_trace/drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';

class cameraPage extends StatefulWidget {
  const cameraPage({super.key});

  @override
  State<cameraPage> createState() => _cameraPageState();
}

int myIndex = 0;
List<Widget> widgetList = [
  Text("Home"),
  Text("Text"),
  Text("Calculator"),
  Text("Camera"),
  Text("Profile"),
];

class _cameraPageState extends State<cameraPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: drawer(),
        appBar: AppBar(
          // ---------------making leading Icon for Logout-------------------
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.logout)),
          actions: [
            // -------------------Making button of Avatar--------------
            FloatingActionButton(
              backgroundColor: Colors.transparent,
              onPressed: () {
                // --------------------------------------Showing Bottom upsliding window----------------------------
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return const Scaffold(
                        backgroundColor: Colors.amberAccent,
                        body: Center(
                            child: Text(
                          "Hello",
                          style: TextStyle(fontSize: 20),
                        )),
                      );
                    });
              },
//  ----------------------------------Making profile Avatar------------------------------------
              child: const CircleAvatar(
                backgroundImage: AssetImage('assets/sunandhitCharacter.png'),
                backgroundColor: Colors.transparent,
                radius: 25,
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 2,
              width: 2,
            ),
            Container(
              height: 620,
              width: 500,
              color: Colors.grey,
//------------------------------ Giving Screens as input to change with NAVBAR----------------
              child: Center(
                  child: IndexedStack(
                index: myIndex,
                children: widgetList,
              )),
            ),
          ],
        ),

// ----------------------Making bottom navigation Bar----------------------------
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            onTap: (index) {
              setState(() {
                myIndex = index;
              });
            },
            currentIndex: myIndex,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "Home",
                  backgroundColor: Colors.amber,
                  ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.text_fields),
                  label: "Text",
                  backgroundColor: Colors.amber),
              BottomNavigationBarItem(
                  icon: Icon(Icons.calculate),
                  label: "Calculator",
                  backgroundColor: Colors.amber),
              BottomNavigationBarItem(
                  icon: Icon(Icons.camera_alt),
                  label: "Camera",
                  backgroundColor: Colors.amber),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_2),
                  label: "Profile",
                  backgroundColor: Colors.amber),
            ]),
      ),
    );
  }
}
