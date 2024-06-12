import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_flutter_width/login_signup_screen.dart';
import 'package:firebase_flutter_width/sucess_screen.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Sucess();
          } else {
            return LoginSignup();
          }
        },
      ),
    );
  }
}
