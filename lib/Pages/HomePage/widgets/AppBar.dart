// ignore_for_file: file_names

import 'package:animate_do/animate_do.dart';
import 'package:e_commerce/Pages/LoginPage/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final Future<SharedPreferences> preferences =
        SharedPreferences.getInstance();
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 19, 10, 43),
      leading: FadeInLeft(
        child: const Icon(
          Icons.list,
          color: Colors.white,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: FadeInRight(
            child: IconButton(
              onPressed: () async {
                Navigator.pushAndRemoveUntil(context,
                    MaterialPageRoute(builder: ((context) {
                  return const LoginPage();
                })), (route) => false);
                final prefs = await preferences;
                await prefs.setBool("user", false);
              },
              icon: const Icon(
                Icons.exit_to_app,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
        )
      ],
      title: FadeInDown(
        child: Text(
          "Provider Shop",
          style: GoogleFonts.lobster(
            letterSpacing: 3.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
