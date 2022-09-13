import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:resmory_flutter/components/text/headline.dart';
import '../signup/signup.dart';
import 'view_model.dart';

import '../../components/roundedCard/rounded_card.dart';

class Login extends StatelessWidget {
  static const String routeName = "Login";

  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LoginViewModel>(
      create: (context) => LoginViewModel(),
      child: const _View(),
    );
  }
}

class _View extends StatelessWidget {
  const _View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<LoginViewModel>(context);

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
                  text: 'Login',
                  headlineLevel: 3,
                ),
                // const SizedBox(height: 10),
                // const Headline(
                //   text: 'Share your memories about restaurants',
                //   headlineLevel: 6,
                // ),
                const SizedBox(height: 20),
                CupertinoTextField(
                  placeholder: "Email Address",
                  keyboardType: TextInputType.emailAddress,
                  controller: viewModel.emailController,
                ),
                const SizedBox(height: 20),
                CupertinoTextField(
                  placeholder: "Password",
                  obscureText: true,
                  controller: viewModel.passwordController,
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                      onPressed: viewModel.loginToFirebase,
                      child: const Text("Login"),
                    ),
                    TextButton(
                      onPressed: () => Get.offAndToNamed(SignUp.routeName),
                      child: const Text("Sign up"),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
