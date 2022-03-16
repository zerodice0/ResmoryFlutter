import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resmory_flutter/components/text/headline.dart';
import 'package:resmory_flutter/view/login/login_view_model.dart';

import '../../components/roundedCard/rounded_card.dart';

class Login extends StatelessWidget {
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
                  text: 'ResMory',
                  headlineLevel: 3,
                ),
                const SizedBox(height: 10),
                const Headline(
                  text: 'Share your memories about restaurants',
                  headlineLevel: 6,
                ),
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
                TextButton(
                  onPressed: viewModel.loginToFirebase,
                  child: const Text("Login"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
