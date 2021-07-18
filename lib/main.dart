import 'package:flutter/material.dart';
import 'package:tts/screens/login_screen.dart';
import 'routes.dart';
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
      routes: route,
      home:LoginScreen(),
    );
  }
}
