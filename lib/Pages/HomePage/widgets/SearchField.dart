// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
        top: 30,
        right: 10,
        left: 10,
      ),
      width: size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xff38304C),
      ),
      child: TextField(
        onTap: () {},
        style: GoogleFonts.lobster(
          color: Colors.white,
          letterSpacing: 1.5,
        ),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(left: 20, top: 12),
          focusColor: const Color(0xff38304C),
          suffixIcon: const Icon(
            Icons.camera_alt_outlined,
            color: Colors.white,
          ),
          disabledBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          hintText: "Search here...",
          hintStyle: GoogleFonts.lobster(
            color: const Color.fromARGB(255, 155, 153, 153),
          ),
          focusedBorder: InputBorder.none,
        ),
      ),
    );
  }
}
