// ignore_for_file: file_names, avoid_unnecessary_containers
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductSizes extends StatelessWidget {
  const ProductSizes({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Row(
        children: [
          Text(
            "Size: ",
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
          sizeWidget("5"),
          const SizedBox(
            width: 7,
          ),
          sizeWidget("6"),
          const SizedBox(
            width: 7,
          ),
          sizeWidget("7"),
          const SizedBox(
            width: 7,
          ),
          sizeWidget("8"),
          const SizedBox(
            width: 7,
          ),
          sizeWidget("9"),
        ],
      ),
    );
  }

  Widget sizeWidget(String num) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: 18,
      child: Text(
        num,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 15,
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}
