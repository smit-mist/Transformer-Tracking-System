import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tts/screens/login_screen.dart';
import 'package:tts/screens/sign_up_screen.dart';
import 'routes.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
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
