import 'package:firebase_flutter_width/widget/button_widget.dart';
import 'package:flutter/material.dart';

class Sucess extends StatelessWidget {
  const Sucess({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green.shade400,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
              child: Text(
            "Sucessful",
            style: TextStyle(
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

  void logout() {}
}
