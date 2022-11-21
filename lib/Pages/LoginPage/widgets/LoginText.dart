// ignore_for_file: file_names
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginText extends StatelessWidget {
  const LoginText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FadeInLeft(
          child: Text(
            "Login",
            style: GoogleFonts.lobster(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 35,
              letterSpacing: 5,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        FadeInRight(
          child: Text(
            "Please sign in to continue",
            style: GoogleFonts.lobster(
              color: const Color.fromARGB(255, 182, 182, 182),
              fontWeight: FontWeight.w500,
              fontSize: 18,
              letterSpacing: 3,
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        )
      ],
    );
  }
}
