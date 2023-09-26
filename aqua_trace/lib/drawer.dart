import 'package:aqua_trace/loginPage1.dart';
import 'package:aqua_trace/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class drawer extends StatefulWidget {
  const drawer({super.key});

  @override
  State<drawer> createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text("Sunandhit"),
            accountEmail: Text("Honeysingh@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/sunandhitCharacter.png'),
              backgroundColor: Colors.transparent,
              radius: 25,
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  image: AssetImage('assets/bgProfile.png'), fit: BoxFit.cover),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.favorite_outline_outlined),
            title: Text("Favourite"),
            // onTap: (){},
          ),
          const ListTile(
            leading: Icon(Icons.people),
            title: Text("Friends"),
            // onTap: (){},
          ),
          const ListTile(
            leading: Icon(Icons.share),
            title: Text("Share"),
            // onTap: (){},
          ),
          const ListTile(
            leading: Icon(Icons.notifications),
            title: Text("Request"),
            // onTap: (){},
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text("Logout"),
            onTap: () {
              Get.to(loginPage1());
            },
          ),
        ],
      ),
    );
  }
}
