// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductBuy extends StatelessWidget {
  const ProductBuy({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 1,
          width: double.infinity,
          color: Colors.white,
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "\$55",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  letterSpacing: 2),
            ),
            addCartButton()
          ],
        )
      ],
    );
  }

  Widget addCartButton() {
    return Container(
      padding: const EdgeInsets.only(top: 5, bottom: 5, right: 8, left: 8),
      decoration: BoxDecoration(
        color: const Color(0xff0DF5E3),
        borderRadius: BorderRadius.circular(25),
        boxShadow: const [
          BoxShadow(
            color: Color(0xff0DF5E3),
            blurRadius: 8,
            spreadRadius: 3,
            offset: Offset(0, 3),
          )
        ],
      ),
      child: Row(
        children: [
          const Icon(
            (Icons.shopping_cart_outlined),
            color: Color(0xff201A30),
            size: 30,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            "Add To Cart",
            style: GoogleFonts.lobster(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
              color: const Color(0xff201A30),
            ),
          )
        ],
      ),
    );
  }
}
