import 'package:firebase_flutter_width/Sucess_screen.dart';
import 'package:firebase_flutter_width/failure_screen.dart';
import 'package:flutter/material.dart';

import 'login_signup_screen.dart';

final _scaffoldKey = GlobalKey<ScaffoldMessengerState>();
void main() {
  runApp(const MainApp());
}

void showSuccessSnackbar(String title, [int timelength = 2]) {
  _scaffoldKey.currentState?.showSnackBar(
    SnackBar(
      content: Text(title, style: TextStyle(color: Colors.black)),
      backgroundColor: Colors.green.shade100,
      duration: Duration(seconds: timelength),
    ),
  );
}

void showErrorSnackbar(String title, [int timelength = 2]) {
  _scaffoldKey.currentState?.showSnackBar(
    SnackBar(
        content: Text(
          title,
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.red.shade100,
        duration: Duration(seconds: timelength)),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scaffoldMessengerKey: _scaffoldKey,
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: Failure(),
      ),
    );
  }
}
