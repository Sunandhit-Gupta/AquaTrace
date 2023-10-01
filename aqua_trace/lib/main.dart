import 'package:aqua_trace/cameraPage.dart';
import 'package:aqua_trace/loginPage1.dart';
import 'package:aqua_trace/provider_list.dart';
import 'package:aqua_trace/ui/auth_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '1.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => listProvider())],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: const Center(child: Text("AquaTrace")),
              actions: [
                IconButton(
                  icon: const Icon(Icons.forward),
                  onPressed: () {
                    Get.to(AuthPage());
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
