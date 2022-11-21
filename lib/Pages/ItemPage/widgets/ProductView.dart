// ignore_for_file: file_names, avoid_unnecessary_containers
import 'package:flutter/material.dart';

class ProductView extends StatelessWidget {
  final String imagePath;
  const ProductView({Key? key, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.3,
      width: size.width,
      decoration: BoxDecoration(
        color: const Color(0xff201A30),
        image: DecorationImage(
          image: AssetImage(
            imagePath,
          ),
        ),
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Color(0xff0DF5E3),
            blurRadius: 10,
            spreadRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
    );
  }
}
