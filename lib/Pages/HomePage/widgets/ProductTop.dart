// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductTop extends StatefulWidget {
  const ProductTop({super.key});

  @override
  State<ProductTop> createState() => _ProductTopState();
}

class _ProductTopState extends State<ProductTop> {
  bool isFavourite = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        discountBox(),
        IconButton(
          splashColor: const Color(0xff201A30),
          onPressed: (() {
            setState(() {
              isFavourite = !isFavourite;
            });
          }),
          icon: isFavourite
              ? const Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 30,
                )
              : const Icon(
                  Icons.favorite_outline,
                  color: Color(0xff201A30),
                  size: 30,
                ),
        )
      ],
    );
  }

  Widget discountBox() {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xff201A30),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(5),
      child: Text(
        "-20%",
        style: GoogleFonts.lobster(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          letterSpacing: 3,
          fontSize: 13,
        ),
      ),
    );
  }
}
