// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoginAniamtion extends StatefulWidget {
  const LoginAniamtion({Key? key}) : super(key: key);

  @override
  State<LoginAniamtion> createState() => _LoginAniamtionState();
}

class _LoginAniamtionState extends State<LoginAniamtion> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    /// loading animation from lottie animations.
    return Container(
      margin: const EdgeInsets.only(top: 50, bottom: 30),
      height: size.height * 0.3,
      width: size.width,
      child: Lottie.network(
        "https://assets4.lottiefiles.com/packages/lf20_dyq0qz89/data.json",
      ),
    );
  }
}
