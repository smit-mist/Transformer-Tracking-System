import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:tts/logic/auth_logic.dart';
import 'package:tts/models/user_model.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  Database database = Database();
  GlobalKey<FormState> _key = GlobalKey<FormState>();
  bool isLoading = false, isVisible = false, isAccepted = false;
  final _auth = AuthService();
  int ok = 0;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    TextEditingController _name = TextEditingController(),
        email = TextEditingController(),
        mobileNo = TextEditingController(),
        password = TextEditingController(),
        empID = TextEditingController(),
        city = TextEditingController();
    void signMeUp(AppUser currentUser) async {
      if (_key.currentState.validate()) {
        setState(() {
          isLoading = true;
        });
        final AppUser user =
            await _auth.signUp(currentUser.email, currentUser.password);
        if (user != null) {
          await database.addUser(currentUser);
          // SharedPreferences prefs = await SharedPreferences.getInstance();
          // prefs.setString('uid', user.uid);
          Navigator.pushReplacementNamed(context, 'home');
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
                    height: h * 0.1,
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
                      labelText: 'Full Name',
                    ),
                    controller: _name,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                    ),
                    controller: email,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Mobile No.',
                    ),
                    controller: mobileNo,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                    ),
                    controller: password,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Employee ID',
                    ),
                    controller: empID,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'City',
                    ),
                    controller: city,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      String post = "Manager";
                      if (ok == 1) {
                        post = "Engineer";
                      }
                      AppUser currentUser = AppUser(
                        name: _name.text,
                        email: email.text,
                        mobileNo: mobileNo.text,
                        city: city.text,
                        empId: empID.text,
                        password: password.text,
                        post: post,
                      );
                      // Just Created User from info provided
                    },
                    child: Text(
                      'Sign Up',
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
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
