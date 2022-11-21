// ignore_for_file: file_names
import 'package:animate_do/animate_do.dart';
import 'package:e_commerce/Pages/LoginPage/LoginPage.dart';
import 'package:e_commerce/providers/SignInScreen_Provider.dart';
import 'package:e_commerce/services/Firebase_Auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignInButton extends StatefulWidget {
  const SignInButton({super.key});

  @override
  State<SignInButton> createState() => _SignInButtonState();
}

class _SignInButtonState extends State<SignInButton> {
  final Authentication _authentication = Authentication();
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            /// creating consumer for connect provider with specific widget.
            const SizedBox(
              height: 30,
            ),
            Consumer<SignInProvider>(
              builder: (context, value, child) {
                return GestureDetector(
                  onTap: (() async {
                    value.showIndicator(true);
                    await _authentication.createWithEmail(value.emailText.text,
                        value.conPasswordText.text, context);
                    value.fullNameText.clear();
                    value.phoneText.clear();
                    value.emailText.clear();
                    value.passwordText.clear();
                    value.conPasswordText.clear();
                    value.showIndicator(false);
                  }),
                  child: FadeInRight(
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
                              "Sign Up",
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
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: (() {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => const LoginPage()),
                    ),
                    (route) => false);
              }),
              child: FadeInLeft(
                child: Row(
                  children: [
                    Text(
                      "Already have an account? ",
                      style: GoogleFonts.lobster(
                        color: const Color.fromARGB(255, 182, 182, 182),
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        letterSpacing: 3,
                      ),
                    ),
                    Text(
                      "Login",
                      style: GoogleFonts.lobster(
                        color: const Color(0xff0DF5E3),
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        letterSpacing: 4.0,
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
