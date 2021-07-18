import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  int ok = 0;
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
                    height: 150,
                  ),
                  Text(
                    'SCIGVOY',
                    style: TextStyle(fontSize: 30),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 25),
                  ),
                  DropdownButtonFormField(
                      onChanged: (newValue) {
                        // do other stuff with _category
                        setState(() => ok = newValue);
                      },
                      value: ok,
                      items: [
                        DropdownMenuItem(
                          value: 0,
                          child: Text('Manager'),
                        ),
                        DropdownMenuItem(
                          value: 1,
                          child: Text('Engineer'),
                        ),
                      ]),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Mobile No.',
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Confirm Password',
                    ),
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  ElevatedButton(
                    onPressed: () {

                    },
                    child: Text(
                      'Sign Up',
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text("Already have account ?"),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, 'login');
                    },
                    child: Text(
                      'Log In',
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
