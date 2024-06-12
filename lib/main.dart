import 'package:firebase_flutter_width/Sucess_screen.dart';
import 'package:firebase_flutter_width/failure_screen.dart';
import 'package:flutter/material.dart';

import 'login_signup_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: Failure()),
    );
  }
}
