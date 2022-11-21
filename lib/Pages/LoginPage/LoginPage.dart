// ignore_for_file: file_names
import 'package:animate_do/animate_do.dart';
import 'package:e_commerce/Pages/LoginPage/widgets/CustomText_Field.dart';
import 'package:e_commerce/Pages/LoginPage/widgets/LoginButton.dart';
import 'package:e_commerce/Pages/LoginPage/widgets/LoginText.dart';
import 'package:e_commerce/Pages/LoginPage/widgets/Login_Animation.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// created this widget for showing animation on top of the login page.
            FadeInDown(child: const LoginAniamtion()),
            Padding(
              padding: const EdgeInsets.only(
                left: 40,
                right: 40,
                bottom: 40,
              ),
              /// created column for showing other widgets.
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  /// this widget represent login text in this page.
                  LoginText(),
                  /// this widget is for custom text field.
                  CustomTextField(),
                  /// this widget is for login button and other bottom contents.
                  LoginButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
