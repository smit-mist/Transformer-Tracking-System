import 'package:flutter/material.dart';

import 'add_tr_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home Page',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'NotoRegular',
          ),
        ),
      ),
      body: TrScreen(),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        child: Container(
          padding: EdgeInsets.only(top: 5),
          width: w,
          height: 60,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.home,
                      size: 30,
                      color: Colors.white,
                    ),
                    Text(
                      'Home',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.qr_code_scanner,
                      size: 30,
                      color: Colors.white,
                    ),
                    Text(
                      'Scan',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.upload_sharp,
                      size: 30,
                      color: Colors.white,
                    ),
                    Text(
                      'Add TR',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.account_circle_sharp,
                      size: 30,
                      color: Colors.white,
                    ),
                    Text(
                      'Profile',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
