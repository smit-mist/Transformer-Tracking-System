import 'package:flutter/cupertino.dart';
import 'package:tts/screens/home_screen.dart';
import 'package:tts/screens/login_screen.dart';
import 'package:tts/screens/sign_up_screen.dart';

// Add the Route and Screen to go for that route
// Make sure Route name is not stupid.
Map<String, Widget Function(BuildContext)> route = {
  'login': (context) => LoginScreen(),
  'sign_up': (context) => SignUpScreen(),
  'home':(context)=>HomeScreen(),
};
