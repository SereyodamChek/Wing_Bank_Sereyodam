import 'package:flutter/material.dart';
import 'package:wing_bank/screen/Login/home/main.dart';

class LoginController {
  void handleLogin(String phoneNumber, BuildContext context) {
    if (phoneNumber == "086420410") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const MainBodyLog()),
      );
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("Invalid phone number")));
    }
  }
}
