import 'package:aqua_trace/ProfilePage.dart';
import 'package:aqua_trace/calculatorPage.dart';
import 'package:aqua_trace/drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:aqua_trace/textfield.dart';

class cameraPage extends StatefulWidget {
  const cameraPage({super.key});

  @override
  State<cameraPage> createState() => _cameraPageState();
}

int myIndex = 2;

List<Widget> widgetList = [
  Text("Calculator"),
  TextWidget(),
  Text("Camera"),
  Text("Tips"),
  ProfilePage(),
];

class _cameraPageState extends State<cameraPage> {
  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      child: Scaffold(
        drawer: drawer(),
        appBar: AppBar(
          // ---------------making leading Icon for Logout ( not used )-------------------
          // leading: IconButton(
          //     onPressed: () {
          //       Get.back();
          //     },
          //     icon: const Icon(Icons.logout_outlined)),

          title: const Text("Hello, " + "Sunandhit"),
          centerTitle: true,
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
                        backgroundColor: Color.fromARGB(255, 152, 173, 209),
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
              height: 596,
              width: 500,
              color: Colors.grey,
//------------------------------ Giving Screens as input to change with NAVBAR----------------
              child: IndexedStack(
                index: myIndex,
                children: widgetList,
              ),
            ),
          ],
        ),

// ----------------------Making bottom navigation Bar (right now not used)----------------------------

        //   bottomNavigationBar:Container(
        //   decoration: const  BoxDecoration(
        //     boxShadow: <BoxShadow>[
        //       BoxShadow(
        //         color: Colors.black,
        //         blurRadius: 10,
        //       ),
        //     ],
        //   ),
        //   child: BottomNavigationBar(
        //     elevation: 10,
        //     enableFeedback: true,
        //       type: BottomNavigationBarType.shifting,
        //       onTap: (index) {
        //         setState(() {
        //           myIndex = index;
        //         });
        //       },
        //       currentIndex: myIndex,
        //       items: const [
        //         BottomNavigationBarItem(
        //             icon: Icon(Icons.home),
        //             label: "Home",
        //             backgroundColor: Colors.amber,
        //             ),
        //         BottomNavigationBarItem(
        //             icon: Icon(Icons.text_fields),
        //             label: "Text",
        //             backgroundColor: Colors.amber),
        //         BottomNavigationBarItem(
        //             icon: Icon(Icons.calculate),
        //             label: "Calculator",
        //             backgroundColor: Colors.amber),
        //         BottomNavigationBarItem(
        //             icon: Icon(Icons.camera_alt),
        //             label: "Camera",
        //             backgroundColor: Colors.amber),
        //         BottomNavigationBarItem(
        //             icon: Icon(Icons.person_2),
        //             label: "Profile",
        //             backgroundColor: Colors.amber),
        //       ]),
        // ),

        // -----------------------making curved  NavBar--------------------------

        bottomNavigationBar: CurvedNavigationBar(
          index: 2,
            onTap: (index) {
              setState(() {
                myIndex = index;
              });
            },
            items: const [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                
                  children: [
                    Icon(Icons.calculate,),
                    Text("calci")
                  ],
                ),

              

                Column(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.text_fields_outlined,),
                    Text("Text")
                  ],
                ),

              
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.camera_alt_rounded,),
                    Text("camera")
                  ],
                ),

                Column(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.tips_and_updates,),
                    Text("Tips")
                  ],
                ),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.person,
                  ),
                  Text("Profile")
                ],
              ),
            ]),
      ),
    );
  }
}
