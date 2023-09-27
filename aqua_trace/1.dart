// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:aqua_trace/ui_login/buttons.dart';
import 'package:aqua_trace/ui_login/square_tile.dart';
import 'package:aqua_trace/ui_login/textfield.dart';
import 'package:flutter/material.dart';

class login extends StatelessWidget {
  login({Key? key}) : super(key: key);

  //  controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  //
  void signUserIn() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(backgroundColor: Colors.black),
      body: Column(
        children: [
          //logo

          Icon(
            Icons.waterfall_chart_rounded,
            size: 100,
          ),
          SizedBox(
            height: 50,
          ),

          //welcome text

          Text(
            'welcome back',
            style: TextStyle(color: Colors.amber, fontSize: 16),
          ),
          SizedBox(
            height: 25,
          ),

          //username
          textfield(
            controller: usernameController,
            hintText: 'Username',
            obscureText: false,
          ),

          //password
          textfield(
              controller: passwordController,
              hintText: 'Password',
              obscureText: true),
          SizedBox(
            height: 10,
          ),

          // forget password

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Forgot Password?',
                  style: TextStyle(color: Colors.white70),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),

          // sign in
          button(
            OnTap: signUserIn,
          ),
          SizedBox(
            height: 50,
          ),

          // continue with
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                    child: Divider(
                  thickness: 0.5,
                  color: Colors.black,
                )),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    'Or Continue with',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Expanded(
                  child: Divider(
                    thickness: 0.50,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),

          // google+ facebook auth

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // google
              Square_tile(imagePath: 'assets/google1.png'),

              SizedBox(
                height: 100,
              ),

              //fb
              Square_tile(imagePath: 'assets/google1.png'),
            ],
          ),

          // register
          Row(
            children: [
              Text('Not a member'),
              SizedBox(
                width: 4,
              ),
              Text('Register now')
            ],
          )
        ],
      ),
    );
  }
}
