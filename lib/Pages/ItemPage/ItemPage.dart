// ignore_for_file: file_names

import 'package:animate_do/animate_do.dart';
import 'package:e_commerce/Pages/ItemPage/widgets/ProductAppBar.dart';
import 'package:e_commerce/Pages/ItemPage/widgets/ProductBuy.dart';
import 'package:e_commerce/Pages/ItemPage/widgets/ProductColor.dart';
import 'package:e_commerce/Pages/ItemPage/widgets/ProductDisc.dart';
import 'package:e_commerce/Pages/ItemPage/widgets/ProductTitle.dart';
import 'package:e_commerce/Pages/ItemPage/widgets/ProductView.dart';
import 'package:e_commerce/Pages/ItemPage/widgets/RatingWidget.dart';
import 'package:e_commerce/Pages/ItemPage/widgets/Sizes.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  final String imagePath;
  final String title;
  const ItemPage({Key? key, required this.imagePath, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        /// this is product page's appbar.
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: ProductAppBar(
            title: title,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 18, right: 18, top: 18),
          child: Column(
            children: [
              /// top image of product
              FadeInDown(child: ProductView(imagePath: imagePath)),

              /// this is for product name.
              FadeInLeft(child: ProductTitle(title: title)),

              /// this is for ratings
              FadeInRight(child: const RatingWidget()),

              /// this is for product ratings
              FadeInLeft(child: const ProductDesc()),

              /// this is for adjust product size.
              FadeInRight(child: const ProductSizes()),

              /// this is for choosing product color.
              FadeInLeft(child: const ProductColor()),

              /// this will push add to cart button little bit down.
              const Spacer(),

              /// this is the button for buying products.
              FadeInDown(child: const ProductBuy()),
              const SizedBox(
                height: 15,
              )
            ],
          ),
        ),
      ),
    );
  }
}
