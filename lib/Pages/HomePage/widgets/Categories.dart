// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    const List<String> categories = [
      "Sandal",
      "Watch",
      "Money Bag",
      "Bag",
      "Purse",
      "High Heal",
      "Baby Watch"
    ];
    return SingleChildScrollView(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            categories.length,
            (index) => Container(
              padding: const EdgeInsets.all(5),
              child: Container(
                padding: const EdgeInsets.only(
                  top: 5,
                  bottom: 5,
                  right: 10,
                  left: 4,
                ),
                height: 50,
                margin: const EdgeInsets.only(right: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 127, 248, 238),
                      blurRadius: 5,
                      spreadRadius: 3,
                      offset: Offset(0, 2),
                    )
                  ],
                ),
                child: Row(
                  children: [
                    Image(
                      image: AssetImage(
                        "assets/images/${index + 1}.png",
                      ),
                      height: 40,
                      width: 50,
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Text(
                      categories[index].toString(),
                      style: GoogleFonts.lobster(
                        color:  const Color(0xff1F1C32),
                        letterSpacing: 2,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
