import 'package:flutter/material.dart';

import 'widget/login.dart';
import 'widget/signup.dart';

class LoginSignup extends StatefulWidget {
  const LoginSignup({super.key});

  @override
  State<LoginSignup> createState() => _LoginSignupState();
}

class _LoginSignupState extends State<LoginSignup> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontFamily: 'Poppins-Bold',
                      color: Color.fromARGB(255, 199, 61, 131),
                    ),
                  ),
                ),
                Tab(
                    child: Text(
                  'Sign UP',
                  style: TextStyle(
                    fontFamily: 'Poppins-Bold',
                    color: Color.fromARGB(255, 199, 61, 131),
                  ),
                )),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              LoginPage(),
              SignupPage(),
            ],
          ),
        ),
      ),
    );
  }
}
