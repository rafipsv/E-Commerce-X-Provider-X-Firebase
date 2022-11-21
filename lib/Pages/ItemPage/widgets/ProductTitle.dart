// ignore_for_file: file_names, avoid_unnecessary_containers
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductTitle extends StatelessWidget {
  final String title;
  const ProductTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Row(
        children: [
          Text(
            title,
            style: GoogleFonts.lobster(
              color: Colors.white,
              fontSize: 40,
              letterSpacing: 4
            ),
          ),
        ],
      ),
    );
  }
}
