// ignore_for_file: file_names
import 'package:flutter/cupertino.dart';

class LoginProvider extends ChangeNotifier {
  /// this is for activity check of email.
  bool isMail = true;

  /// this is for activity check of password.
  bool isPass = false;

  /// this is for activity check of password's obsecure text.
  bool obsecure = true;
  bool indicator = false;

  /// this is for control email text field.
  TextEditingController emailText = TextEditingController();

  /// this is for control password text field.
  TextEditingController passwordText = TextEditingController();

  /// this is for check activity of email and password.
  void isActive(bool email, bool pass) {
    isMail = email;
    isPass = pass;
    notifyListeners();
  }

  /// this is for password text field's obsecurity.
  void showPass() {
    obsecure = !obsecure;
    notifyListeners();
  }

  void showIndicator(bool value) {
    indicator = value;
    notifyListeners();
  }
}
