import 'package:aqua_trace/calculatorPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';

class cameraPage extends StatefulWidget {
  const cameraPage({super.key});

  @override
  State<cameraPage> createState() => _cameraPageState();
}

class _cameraPageState extends State<cameraPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Align(
              alignment: const Alignment(0.98, -0.99),
              child: FloatingActionButton(
                backgroundColor: Colors.transparent,
                onPressed: () {
                  // --------------------------------------Showing Bottom upsliding window----------------------------
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return const Scaffold(
                          backgroundColor: Color.fromARGB(255, 127, 228, 134),
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
                  backgroundColor: Colors.transparent,
                  radius: 30,
                ),
              ),
            ),
            const SizedBox(
              height: 610,
              width: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: AnimatedButton(
                    onPress: () {},
                    width: 195,
                    height: 60,
                    borderRadius: 10,
                    text: "Text",
                    backgroundColor: Colors.black,
                    selectedBackgroundColor: Colors.grey,
                  ),
                ),

                ElevatedButton(
                  
                      onPressed: () {
                      Get.to(const calculatorPage());
                    },
                    child: const Text("Calculator",style: TextStyle(fontSize: 20)))
                    
                // Align(
                // alignment: Alignment.bottomRight,
                // child: AnimatedButton(
                //   onPress: () {
                //     Get.to(calculatorPage());
                //   },
                // height: 60,
                // width: 195,
                // borderRadius: 10,
                // text: "Calculator",
                // backgroundColor: Colors.black,
                // selectedBackgroundColor: Colors.grey,
                // ),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
