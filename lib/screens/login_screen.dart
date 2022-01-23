import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:tts/logic/auth_logic.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}
String email='' , password='';
class _LoginScreenState extends State<LoginScreen> {
  Database database = Database();
  GlobalKey<FormState> _key = GlobalKey<FormState>();
  bool isLoading = false, isVisible = false, isAccepted = false;
  final _auth = AuthService();
  int ok = 0;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    void signMeIn(String emai, String pass) async {
      if (true) {
        setState(() {
          isLoading = true;
        });
        print(emai);
        print(pass);
        final  user =
        await _auth.signIn(emai, pass);
        if (user != null) {
          //await database.addUser(currentUser);
          // SharedPreferences prefs = await SharedPreferences.getInstance();
          // prefs.setString('uid', user.uid);
          Navigator.pushNamed(context, 'home');
        } else {
          setState(() {
            isLoading = false;
          });
          Fluttertoast.showToast(
            msg: 'Something went wrong',
            fontSize: 16.0,
            gravity: ToastGravity.BOTTOM,
            toastLength: Toast.LENGTH_LONG,
          );
        }
      }
    }

    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: w * 0.1),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 250,
                  ),
                  AnimatedTextKit(
                    animatedTexts: [
                      TyperAnimatedText(
                        'SCIGVOY',
                        textStyle: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                          color: Colors.blue,
                          fontFamily: 'NotoSerif',
                        ),
                        speed: const Duration(milliseconds: 200),
                      ),
                    ],
                    totalRepeatCount: 1,
                    pause: const Duration(milliseconds: 1000),
                    displayFullTextOnTap: true,
                    stopPauseOnTap: true,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                      fontFamily: 'NotoRegular',
                    ),
                  ),
                  TextField(
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'NotoRegular',
                    ),
                    decoration: InputDecoration(
                      labelText: 'Email',
                    ),
                    onChanged: (String delta){
                      setState(() {
                        email = delta;
                      });
                    },
                  ),
                  TextField(
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'NotoRegular',
                    ),
                    decoration: InputDecoration(
                      labelText: 'Password',
                    ),
                    obscureText: true,
                    onChanged: (String delta){
                      setState(() {
                        password = delta;
                      });
                    },
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      signMeIn(email, password);
                    },
                    child: Text(
                      'Login',
                    ),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 40),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Don't have account ?"),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, 'sign_up');
                    },
                    child: Text(
                      'Sign Up',
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
