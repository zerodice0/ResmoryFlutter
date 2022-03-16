import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:resmory_flutter/view/login/login.dart';
import 'firebase_options.dart';

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
    return const MaterialApp(
      home: Login(),
    );
  }
}
