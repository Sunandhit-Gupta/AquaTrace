import 'package:aqua_trace/cameraPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class loginPage1 extends StatefulWidget {
  const loginPage1({super.key});

  @override
  State<loginPage1> createState() => _loginPage1State();
}

class _loginPage1State extends State<loginPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Get.to(cameraPage());
            },
            child: const Text("Login")),
      ),
    );
  }
}
