import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_flutter_width/widget/button_widget.dart';
import 'package:flutter/material.dart';

class Sucess extends StatelessWidget {
  Sucess({super.key});
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green.shade400,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
            "Sucessful as${user.email}",
            style: const TextStyle(
                fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
          )),
          const SizedBox(
            height: 40,
          ),
          Button(
            btnName: "Logout",
            callBack: logout,
          )
        ],
      ),
    );
  }

  void logout() {
    FirebaseAuth.instance.signOut();
  }
}
