// ignore_for_file: file_names
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInText extends StatelessWidget {
  const SignInText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       const SizedBox(height: 20,),
        FadeInDown(
          child: Text(
            "Create Account",
            style: GoogleFonts.lobster(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 35,
                letterSpacing: 5),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        FadeInDown(
          child: Text(
            "Please fill the input below here",
            style: GoogleFonts.lobster(
                color: const Color.fromARGB(255, 182, 182, 182),
                fontWeight: FontWeight.w500,
                fontSize: 18,
                letterSpacing: 3),
          ),
        ),
        const SizedBox(
          height: 30,
        )
      ],
    );
  }
}
