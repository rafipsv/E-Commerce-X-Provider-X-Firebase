// ignore_for_file: file_names, use_build_context_synchronously
import 'package:e_commerce/Pages/HomePage/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Authentication {
  firebase_auth.FirebaseAuth firebaseAuth = firebase_auth.FirebaseAuth.instance;
  final Future<SharedPreferences> _preferences =
      SharedPreferences.getInstance();

  Future createWithEmail(
      String email, String pass, BuildContext context) async {
    try {
      await firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: pass,
      );
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            "Account Created Successfully",
            style: GoogleFonts.lobster(
                color: const Color(0xff1F1C32),
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0),
          ),
          backgroundColor: const Color(0xff0DF5E3),
        ),
      );

      Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: ((context) {
        return const HomePage();
      })), (route) => false);
      final prefs = await _preferences;
      await prefs.setBool("user", true);
    } catch (error) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            "$error",
            style: GoogleFonts.lobster(
                color: const Color(0xff1F1C32),
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0),
          ),
          backgroundColor: const Color(0xff0DF5E3),
        ),
      );
    }
  }

  Future loginWithEmail(String email, String pass, BuildContext context) async {
    try {
      await firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: pass,
      );
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            "Logged in Successfully",
            style: GoogleFonts.lobster(
                color: const Color(0xff1F1C32),
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0),
          ),
          backgroundColor: const Color(0xff0DF5E3),
        ),
      );
      Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: ((context) {
        return const HomePage();
      })), (route) => false);
      final prefs = await _preferences;
      await prefs.setBool("user", true);
    } catch (error) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            "$error",
            style: GoogleFonts.lobster(
                color: const Color(0xff1F1C32),
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0),
          ),
          backgroundColor: const Color(0xff0DF5E3),
        ),
      );
    }
  }
}
