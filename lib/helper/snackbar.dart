import 'package:flutter/material.dart';

void sucessSnackbar(String title, [int timelength = 2]) {
  SnackBar(
    content: Text(title),
    backgroundColor: Colors.green.shade100,
    duration: Duration(seconds: timelength),
  );
}

void errorSnackbar(String title, [int timelength = 2]) {
  SnackBar(
    content: Text(title),
    backgroundColor: Colors.red.shade100,
    duration: const Duration(seconds: 2),
  );
}
