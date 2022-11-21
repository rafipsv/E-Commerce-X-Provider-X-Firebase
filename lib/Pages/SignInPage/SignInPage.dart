// ignore_for_file: file_names
import 'package:e_commerce/Pages/SignInPage/widgets/Arrow_Back.dart';
import 'package:e_commerce/Pages/SignInPage/widgets/Custom_Sign_Field.dart';
import 'package:e_commerce/Pages/SignInPage/widgets/SignInButton.dart';
import 'package:e_commerce/Pages/SignInPage/widgets/SignInText.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              /// this widget is for back to login page.
              ArrowBack(),
              /// this is for sign in page upper text.
              SignInText(),
              /// this is for showing custom field.
              CustomSignField(),
              /// this is for sign in button.
              SignInButton()
            ],
          ),
        ),
      ),
    );
  }
}
