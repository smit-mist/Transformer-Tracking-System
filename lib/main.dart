import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tts/screens/login_screen.dart';
import 'package:tts/screens/sign_up_screen.dart';
import 'routes.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: route,
      home:SignUpScreen(),
    );
  }
}
