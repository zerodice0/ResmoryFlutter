import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'view/login/login.dart';
import 'firebase_options.dart';
import 'view/signup/signup.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const ResMory());
}

class ResMory extends StatefulWidget {
  const ResMory({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ResMoryState();
  }
}

class _ResMoryState extends State<ResMory> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      routes: {
        Login.routeName: (context) => const Login(),
        SignUp.routeName: (context) => const SignUp()
      },
      initialRoute: Login.routeName,
    );
  }
}
