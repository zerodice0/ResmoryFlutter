import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:resmory_flutter/components/text/headline.dart';
import 'package:resmory_flutter/view/login/page.dart';

import '../../components/roundedCard/rounded_card.dart';
import 'view_model.dart';

class SignUp extends StatelessWidget {
  static const String routeName = "SignUp";

  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<SignUpViewModel>(
      create: (context) => SignUpViewModel(),
      child: _View(),
    );
  }
}

class _View extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(48.0),
          child: RoundedCard(
            innerPadding: 40,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Headline(
                  text: 'Sign Up',
                  headlineLevel: 3,
                ),
                const SizedBox(height: 20),
                const CupertinoTextField(
                  placeholder: "Email Address",
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 20),
                const CupertinoTextField(
                  placeholder: "Confirm Email Address",
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 20),
                const CupertinoTextField(
                  placeholder: "Password",
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                ),
                TextButton(
                  onPressed: () => {},
                  child: const Text("Sign Up"),
                ),
                TextButton(
                  onPressed: () => Get.offAndToNamed(Login.routeName),
                  child: const Text("Login"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
