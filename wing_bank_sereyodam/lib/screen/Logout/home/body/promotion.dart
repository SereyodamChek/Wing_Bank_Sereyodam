import 'package:flutter/material.dart';
import 'package:wing_bank/models/data/promotion.dart';
import 'package:wing_bank/screen/Logout/Page/auth/register.dart';

// ignore: must_be_immutable
class Promotion extends StatelessWidget {
  const Promotion({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: promotions.map((promotion) {
        return GestureDetector(
          onTap: () {
            print(promotion['onPress']);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Register()),
            );
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(promotion['image']!),
            ),
          ),
        );
      }).toList(),
    );
  }
}
