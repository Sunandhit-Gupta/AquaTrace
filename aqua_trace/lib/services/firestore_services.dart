import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:aqua_trace/screens/register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:aqua_trace/screens/drawer.dart';
import 'package:flutter/material.dart';

var db = FirebaseFirestore.instance;
final userData = <String, dynamic>{
  "userName": userNameController.text.trim(),
  "email": emailController.text.trim().toLowerCase(),
};
addUserData() async {
  await db.collection('users').add(userData);
}

Future<String> getUserName() async {
  final queryData = await db
      .collection('users')
      .where('email', isEqualTo: user.email!);

  final snapshot = await queryData.get();
  final currentUserName = snapshot.docs.first.data()['userName'];
  return currentUserName;
}
