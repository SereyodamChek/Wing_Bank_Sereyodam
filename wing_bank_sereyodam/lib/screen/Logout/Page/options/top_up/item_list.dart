import 'package:flutter/material.dart';
import 'package:wing_bank/screen/Logout/Page/auth/register.dart';
import 'package:wing_bank/theme/colors.dart';

class CircleTextContainer extends StatelessWidget {
  final String text;
  const CircleTextContainer({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Register()),
        );
      },
      child: Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: BackgroundColor.bgColor,
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
