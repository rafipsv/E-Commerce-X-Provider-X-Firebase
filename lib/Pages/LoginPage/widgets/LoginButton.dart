// ignore_for_file: file_names
import 'package:animate_do/animate_do.dart';
import 'package:e_commerce/Pages/SignInPage/SignInPage.dart';
import 'package:e_commerce/providers/LoginScreen_Provider.dart';
import 'package:e_commerce/services/Firebase_Auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginButton extends StatefulWidget {
  const LoginButton({super.key});

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  final Authentication _authentication = Authentication();
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            /// creating consumer for connect provider with specific widget.
            Consumer<LoginProvider>(
              builder: (context, value, child) {
                return FadeInLeft(
                  child: GestureDetector(
                    onTap: (() async {
                      value.showIndicator(true);
                      await _authentication.loginWithEmail(
                          value.emailText.text, value.passwordText.text, context);
                      value.emailText.clear();
                      value.passwordText.clear();
                      value.showIndicator(false);
                    }),
                    child: Container(
                      alignment: Alignment.center,
                      height: 60,
                      width: 220,
                      decoration: BoxDecoration(
                        color: const Color(0xff0DF5E3),
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0xff0DF5E3),
                            blurRadius: 10.0,
                            spreadRadius: 5,
                            offset: Offset(0, 5),
                          )
                        ],
                      ),
                      child: value.indicator
                          ? const CircularProgressIndicator(
                              color: Color(0xff1F1C32),
                            )
                          : Text(
                              "Login",
                              style: GoogleFonts.lato(
                                color: const Color(0xff1F1C32),
                                fontWeight: FontWeight.w900,
                                fontSize: 18,
                                letterSpacing: 1.0,
                              ),
                            ),
                    ),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 25,
            ),
            FadeInRight(
              child: Text(
                "Forgot Password",
                style: GoogleFonts.lobster(
                  color: const Color(0xff0DF5E3),
                  fontWeight: FontWeight.w900,
                  fontSize: 16,
                  letterSpacing: 3.0,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: (() {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => const SignInPage()),
                    ),
                    (route) => false);
              }),
              child: FadeInLeft(
                child: Row(
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: GoogleFonts.lobster(
                        color: const Color.fromARGB(255, 182, 182, 182),
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        letterSpacing: 3,
                      ),
                    ),
                    Text(
                      "Sign up",
                      style: GoogleFonts.lobster(
                        color: const Color(0xff0DF5E3),
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        letterSpacing: 3.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
