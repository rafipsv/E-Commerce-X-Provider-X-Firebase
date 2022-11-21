// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductColor extends StatelessWidget {
  const ProductColor({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      child: Row(
        children: [
          Text(
            "Color: ",
            style: GoogleFonts.lobster(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              letterSpacing: 3,
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          colorWidget(Colors.red),
          const SizedBox(
            width: 7,
          ),
          colorWidget(Colors.green),
          const SizedBox(
            width: 7,
          ),
          colorWidget(Colors.blue),
          const SizedBox(
            width: 7,
          ),
          colorWidget(Colors.purple),
          const SizedBox(
            width: 7,
          ),
          colorWidget(Colors.yellow),
        ],
      ),
    );
  }

  Widget colorWidget(Color color) {
    return CircleAvatar(
      backgroundColor: color,
      radius: 18,
    );
  }
}
