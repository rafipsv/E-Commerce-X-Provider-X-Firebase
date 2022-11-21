// ignore_for_file: file_names

import 'package:animate_do/animate_do.dart';
import 'package:e_commerce/providers/LoginScreen_Provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({super.key});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        /// using cosumer for connect provider for specific widget.
        Consumer<LoginProvider>(
          builder: (context, value, child) {
            /// creating custom text field for email input.
            return FadeInLeft(
              child: Container(
                width: size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: value.isMail ? const Color(0xff38304C) : null,
                ),
                child: TextField(
                  controller: value.emailText,
                  onTap: () {
                    value.isActive(true, false);
                  },
                  style: GoogleFonts.lobster(
                    color: Colors.white,
                    letterSpacing: 1.5,
                  ),
                  decoration: InputDecoration(
                    focusColor: const Color(0xff38304C),
                    prefixIcon: const Icon(
                      Icons.mail_outline,
                      color: Colors.white,
                    ),
                    disabledBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    hintText: "Enter Email...",
                    hintStyle: GoogleFonts.lobster(
                      color: const Color.fromARGB(255, 155, 153, 153),
                    ),
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),
            );
          },
        ),
        const SizedBox(
          height: 30,
        ),

        /// using cosumer for connect provider for specific widget.
        Consumer<LoginProvider>(
          builder: (context, value, child) {
            /// creating custom text field for password input.
            return FadeInRight(
              child: Container(
                width: size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: value.isPass ? const Color(0xff38304C) : null,
                ),
                child: TextField(
                  controller: value.passwordText,
                  onTap: () {
                    value.isActive(false, true);
                  },
                  style: GoogleFonts.lobster(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    focusColor: const Color(0xff38304C),
                    disabledBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    prefixIcon: const Icon(
                      Icons.lock_outline,
                      color: Colors.white,
                    ),
                    suffixIcon: IconButton(
                      splashColor: Colors.white,
                      onPressed: (() {
                        value.showPass();
                      }),
                      icon: value.obsecure
                          ? const Icon(
                              Icons.lock,
                              color: Colors.white,
                            )
                          : const Icon(
                              Icons.remove_red_eye,
                              color: Colors.white,
                            ),
                    ),
                    hintText: "Enter Password...",
                    hintStyle: GoogleFonts.lobster(
                      color: const Color.fromARGB(255, 155, 153, 153),
                    ),
                    focusedBorder: InputBorder.none,
                  ),
                  obscureText: value.obsecure,
                ),
              ),
            );
          },
        ),
        const SizedBox(
          height: 30,
        )
      ],
    );
  }
}
