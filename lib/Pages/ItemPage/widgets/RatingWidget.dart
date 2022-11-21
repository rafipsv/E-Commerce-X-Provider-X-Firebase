// ignore_for_file: file_names, avoid_unnecessary_containers
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ratingBar(),
          quantityWidget(),
        ],
      ),
    );
  }

  Widget ratingBar() {
    return RatingBar.builder(
      initialRating: 3,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: false,
      itemCount: 5,
      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
      unratedColor: Colors.white,
      itemSize: 30,
      itemBuilder: (context, _) => const Icon(
        Icons.favorite,
        color: Colors.red,
      ),
      onRatingUpdate: (rating) {},
    );
  }

  Widget quantityWidget() {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 5, bottom: 20, right: 5, left: 5),
          decoration:
              const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
          child: const Icon(
            Icons.minimize_outlined,
            size: 25,
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        const Text(
          "01",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
        ),
        const SizedBox(
          width: 5,
        ),
        Container(
          padding:
              const EdgeInsets.only(top: 20, bottom: 20, right: 5, left: 5),
          decoration:
              const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
          child: const Icon(
            Icons.add,
            size: 25,
          ),
        ),
      ],
    );
  }
}
