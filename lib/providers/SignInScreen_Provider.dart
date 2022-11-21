// ignore_for_file: file_names
import 'package:flutter/material.dart';

class SignInProvider extends ChangeNotifier {
  /// booleans for sign in page's text fields activity.
  bool fullName = true;
  bool phone = false;
  bool email = false;
  bool password = false;
  bool confirmPassword = false;
  bool passObsecure = true;
  bool conPassObsecure = true;
  bool indicator = false;

  /// these controllers is for getting text from sign in page.
  TextEditingController fullNameText = TextEditingController();
  TextEditingController phoneText = TextEditingController();
  TextEditingController emailText = TextEditingController();
  TextEditingController passwordText = TextEditingController();
  TextEditingController conPasswordText = TextEditingController();

  /// this is for activity check
  void isActive(bool name, bool number, bool mail, bool pass, bool conPass) {
    fullName = name;
    phone = number;
    email = mail;
    password = pass;
    confirmPassword = conPass;
    notifyListeners();
  }

  /// obsecure change in password field.
  void showPass() {
    passObsecure = !passObsecure;
    notifyListeners();
  }

  /// obsecure change in confirm password field.
  void showConPass() {
    conPassObsecure = !conPassObsecure;
    notifyListeners();
  }

  void showIndicator(bool value) {
    indicator = value;
    notifyListeners();
  }
}
