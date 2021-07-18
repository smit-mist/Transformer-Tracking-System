import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
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
                  Text(
                    'SCIGVOY',
                    style: TextStyle(fontSize: 30),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Login',
                    style: TextStyle(fontSize: 25),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                    ),
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Login',
                    ),
                  ),
                  SizedBox(height: 10,),
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
