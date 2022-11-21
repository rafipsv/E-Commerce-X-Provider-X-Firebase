// ignore_for_file: file_names
import 'package:animate_do/animate_do.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:e_commerce/Pages/HomePage/widgets/AppBar.dart';
import 'package:e_commerce/Pages/HomePage/widgets/BestSelling.dart';
import 'package:e_commerce/Pages/HomePage/widgets/Categories.dart';
import 'package:e_commerce/Pages/HomePage/widgets/CategoriesTitle.dart';
import 'package:e_commerce/Pages/HomePage/widgets/SearchField.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(70),

          /// this is for homepage app bar.
          child: HomeAppBar(),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 15,
              right: 15,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// this is for search products
                FadeInDown(child: const SearchField()),

                /// this is for title of categories
                FadeInLeft(child: const CategoriesTitle(title: "Categories")),

                /// this is category widgte.
                FadeInRight(child: const Categories()),

                /// this is for title of categories
                FadeInLeft(child: const CategoriesTitle(title: "Best Selling")),

                /// this is for best selling widget.
                FadeInRight(
                  child: const BestSelling(
                    show: 0,
                  ),
                ),
               const SizedBox(
                  height: 20,
                ),

                /// this is for best selling widget.
                FadeInLeft(
                  child: const BestSelling(
                    show: 3,
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          items: const <Widget>[
            Icon(
              Icons.home,
              color: Colors.white,
            ),
            Icon(
              Icons.add_shopping_cart_outlined,
              color: Colors.white,
            ),
            Icon(
              Icons.list,
              color: Colors.white,
            )
          ],
          backgroundColor: Colors.white,
          buttonBackgroundColor: const Color(0xff201A30),
          color: const Color(0xff201A30),
        ),
      ),
    );
  }
}
