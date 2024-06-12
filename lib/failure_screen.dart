import 'package:firebase_flutter_width/widget/button_widget.dart';
import 'package:flutter/material.dart';

class Failure extends StatelessWidget {
  const Failure({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red.shade400,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
              child: Text(
            "Bad Request",
            style: TextStyle(
                fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
          )),
          const SizedBox(
            height: 40,
          ),
          Button(
            btnName: "GO Back",
            callBack: goBack,
          )
        ],
      ),
    );
  }

  void goBack() {}
}
