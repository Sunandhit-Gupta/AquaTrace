import 'package:aqua_trace/cameraPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Center(child: Text("AquaTrace")),
            actions: [
              IconButton(
                icon: const Icon(Icons.forward),
                onPressed: () {
                  Get.to(const cameraPage());
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
