// ignore_for_file: file_names
import 'package:animate_do/animate_do.dart';
import 'package:e_commerce/providers/SignInScreen_Provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CustomSignField extends StatefulWidget {
  const CustomSignField({super.key});

  @override
  State<CustomSignField> createState() => _CustomSignFieldState();
}

class _CustomSignFieldState extends State<CustomSignField> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Consumer<SignInProvider>(
          builder: (context, value, child) {
            return FadeInLeft(
              child: Container(
                width: size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: value.fullName ? const Color(0xff38304C) : null,
                ),
                child: TextField(
                  onTap: () {
                    value.isActive(true, false, false, false, false);
                  },
                  controller: value.fullNameText,
                  style: GoogleFonts.lobster(
                    color: Colors.white,
                    letterSpacing: 1.5,
                  ),
                  decoration: InputDecoration(
                    focusColor: const Color(0xff38304C),
                    prefixIcon: const Icon(
                      Icons.person_outline,
                      color: Colors.white,
                    ),
                    disabledBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    hintText: "Enter Full Name...",
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
          height: 25,
        ),
        Consumer<SignInProvider>(
          builder: (context, value, child) {
            return FadeInRight(
              child: Container(
                width: size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: value.phone ? const Color(0xff38304C) : null,
                ),
                child: TextField(
                  onTap: () {
                    value.isActive(false, true, false, false, false);
                  },
                  controller: value.phoneText,
                  style: GoogleFonts.lobster(
                    color: Colors.white,
                    letterSpacing: 1.5,
                  ),
                  decoration: InputDecoration(
                    focusColor: const Color(0xff38304C),
                    prefixIcon: const Icon(
                      Icons.smartphone,
                      color: Colors.white,
                    ),
                    disabledBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    hintText: "Phone...",
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
          height: 25,
        ),
        Consumer<SignInProvider>(
          builder: (context, value, child) {
            return FadeInLeft(
              child: Container(
                width: size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: value.email ? const Color(0xff38304C) : null,
                ),
                child: TextField(
                  onTap: () {
                    value.isActive(false, false, true, false, false);
                  },
                  controller: value.emailText,
                  style: GoogleFonts.lobster(
                    color: Colors.white,
                    letterSpacing: 1.5,
                  ),
                  decoration: InputDecoration(
                    focusColor: const Color(0xff38304C),
                    prefixIcon: const Icon(
                      Icons.mail_outlined,
                      color: Colors.white,
                    ),
                    disabledBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    hintText: "Email...",
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
          height: 25,
        ),
        Consumer<SignInProvider>(
          builder: (context, value, child) {
            return FadeInRight(
              child: Container(
                width: size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: value.password ? const Color(0xff38304C) : null,
                ),
                child: TextField(
                  onTap: () {
                    value.isActive(false, false, false, true, false);
                  },
                  controller: value.passwordText,
                  obscureText: value.passObsecure,
                  style: GoogleFonts.lobster(
                    color: Colors.white,
                    letterSpacing: 1.5,
                  ),
                  decoration: InputDecoration(
                    focusColor: const Color(0xff38304C),
                    prefixIcon: const Icon(
                      Icons.password,
                      color: Colors.white,
                    ),
                    suffixIcon: IconButton(
                      onPressed: (() {
                        value.showPass();
                      }),
                      icon: value.passObsecure
                          ? const Icon(
                              Icons.lock,
                              color: Colors.white,
                            )
                          : const Icon(
                              Icons.remove_red_eye,
                              color: Colors.white,
                            ),
                    ),
                    disabledBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    hintText: "Password...",
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
          height: 25,
        ),
        Consumer<SignInProvider>(
          builder: (context, value, child) {
            return FadeInLeft(
              child: Container(
                width: size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: value.confirmPassword ? const Color(0xff38304C) : null,
                ),
                child: TextField(
                  onTap: () {
                    value.isActive(false, false, false, false, true);
                  },
                  controller: value.conPasswordText,
                  obscureText: value.conPassObsecure,
                  style: GoogleFonts.lobster(
                    color: Colors.white,
                    letterSpacing: 1.5,
                  ),
                  decoration: InputDecoration(
                    focusColor: const Color(0xff38304C),
                    prefixIcon: const Icon(
                      Icons.password,
                      color: Colors.white,
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        value.showConPass();
                      },
                      icon: value.conPassObsecure
                          ? const Icon(
                              Icons.lock,
                              color: Colors.white,
                            )
                          : const Icon(
                              Icons.remove_red_eye,
                              color: Colors.white,
                            ),
                    ),
                    disabledBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    hintText: "Confirm Password...",
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
      ],
    );
  }
}
