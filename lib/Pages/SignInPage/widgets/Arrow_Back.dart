// ignore_for_file: file_names
import 'package:animate_do/animate_do.dart';
import 'package:e_commerce/Pages/LoginPage/LoginPage.dart';
import 'package:flutter/material.dart';

class ArrowBack extends StatelessWidget {
  const ArrowBack({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => const LoginPage()),
                  ),
                  (route) => false);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
