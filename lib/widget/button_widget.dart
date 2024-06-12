import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String btnName;
  final VoidCallback? callBack;
  const Button({super.key, required this.btnName, this.callBack});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        callBack!();
      },
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 199, 61, 131),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      child: Text(
        btnName,
        style: const TextStyle(
          fontFamily: 'Poppins-Bold',
          color: Colors.white,
        ),
      ),
    );
  }
}
