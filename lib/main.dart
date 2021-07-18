import 'package:flutter/material.dart';
import 'package:tts/screens/login_screen.dart';
import 'file:///C:/Users/smit3/AndroidStudioProjects/tts/lib/screens/sign_in_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:LoginScreen(),
    );
  }
}
