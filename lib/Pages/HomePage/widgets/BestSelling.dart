// ignore_for_file: file_names
import 'package:e_commerce/Pages/HomePage/widgets/ProductInfo.dart';
import 'package:e_commerce/Pages/HomePage/widgets/ProductTop.dart';
import 'package:e_commerce/Pages/ItemPage/ItemPage.dart';
import 'package:flutter/material.dart';

class BestSelling extends StatelessWidget {
  final int show;
  const BestSelling({super.key, required this.show});

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
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          categories.length - 3,
          (index) => Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 15),
                height: 285,
                width: 195,
                decoration: BoxDecoration(
                  color: const Color(0xff201A30),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              GestureDetector(
                onTap: (() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) {
                        return ItemPage(
                          imagePath: "assets/images/${index + 1 + show}.png",
                          title: categories[index + show],
                        );
                      }),
                    ),
                  );
                }),
                child: Container(
                  margin: const EdgeInsets.only(right: 15),
                  height: 270,
                  width: 190,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(255, 127, 248, 238),
                        blurRadius: 6,
                        spreadRadius: 4,
                        offset: Offset(3, 4),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 5,
                      right: 10,
                      left: 15,
                      bottom: 10,
                    ),
                    child: Column(
                      children: [
                        const ProductTop(),
                        Image.asset(
                          "assets/images/${index + 1 + show}.png",
                          height: 140,
                          width: 140,
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        ProductInfo(
                          title: categories[index + show],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
