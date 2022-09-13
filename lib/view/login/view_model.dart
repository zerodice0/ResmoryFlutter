import 'package:flutter/material.dart';

class LoginViewModel extends ChangeNotifier {
  TextEditingController? _emailController;
  TextEditingController? _passwordController;

  TextEditingController get emailController =>
      _emailController ??= TextEditingController();
  TextEditingController get passwordController =>
      _passwordController ??= TextEditingController();

  bool checkEmailValid(String email) {
    return email.isNotEmpty;
  }

  bool checkPasswordValid(String password) {
    return password.isNotEmpty;
  }

  void loginToFirebase() {
    String email = emailController.text;
    String password = passwordController.text;

    if (checkEmailValid(email) && checkPasswordValid(password)) {
      /* Todo: Login to Firebase */
    } else {
      /* Todo: Show error */
    }
  }
}
