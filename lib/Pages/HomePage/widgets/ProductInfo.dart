// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductInfo extends StatelessWidget {
  final String title;
  const ProductInfo({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              title,
              style: GoogleFonts.lobster(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: const Color(0xff201A30),
                letterSpacing: 3,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "\$55",
              style: GoogleFonts.lobster(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: const Color(0xff201A30),
                letterSpacing: 3,
              ),
            ),
            const Icon(
              Icons.shopping_cart_checkout_outlined,
              color: Color(0xff201A30),
            )
          ],
        )
      ],
    );
  }
}
