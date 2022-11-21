// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDesc extends StatelessWidget {
  const ProductDesc({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "🎯 Can’t stop buying plants? Unbeleafable. Don’t worry—us too! Cover yourself in your favourite obsession in our NEW I Love Plants Oodie! For every I Love Plants Oodie sold, one tree is planted across the World.",
      style: GoogleFonts.lobster(
        color: Colors.white,
        fontWeight: FontWeight.w600,
        letterSpacing: 4,
        fontSize: 13
      ),
    );
  }
}
