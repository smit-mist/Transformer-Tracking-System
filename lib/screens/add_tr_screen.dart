import 'package:flutter/material.dart';
import 'package:date_time_picker/date_time_picker.dart';

class TrScreen extends StatefulWidget {
  @override
  _TrScreenState createState() => _TrScreenState();
}

class _TrScreenState extends State<TrScreen> {
  bool switchState = false;

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
                    height: 10,
                  ),
                  Text(
                    'Add Transformer',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                      color: Colors.blue[700],
                      fontFamily: 'NotoSerif',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  TextField(
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'NotoRegular',
                    ),
                    decoration: InputDecoration(
                      labelText: 'Transformer ID.',
                    ),
                  ),
                  TextField(
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'NotoRegular',
                    ),
                    decoration: InputDecoration(
                      labelText: 'Model Name',
                    ),
                  ),
                  TextField(
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'NotoRegular',
                    ),
                    decoration: InputDecoration(
                      labelText: 'Company',
                    ),
                  ),
                  TextField(
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'NotoRegular',
                    ),
                    decoration: InputDecoration(
                      labelText: 'Tested Quality',
                    ),
                  ),
                  TextField(
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'NotoRegular',
                    ),
                    decoration: InputDecoration(
                      labelText: 'Address',
                    ),
                  ),
                  TextField(
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'NotoRegular',
                    ),
                    decoration: InputDecoration(
                      labelText: 'City',
                    ),
                  ),
                  TextField(
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'NotoRegular',
                    ),
                    decoration: InputDecoration(
                      labelText: 'State',
                    ),
                  ),
                  TextField(
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'NotoRegular',
                    ),
                    decoration: InputDecoration(
                      labelText: 'Cost',
                    ),
                  ),
                  TextField(
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'NotoRegular',
                    ),
                    decoration: InputDecoration(
                      labelText: 'Winding',
                    ),
                  ),
                  TextField(
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'NotoRegular',
                    ),
                    decoration: InputDecoration(
                      labelText: 'Guarantee Period',
                    ),
                  ),
                  TextField(
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'NotoRegular',
                    ),
                    decoration: InputDecoration(
                      labelText: 'Oil Capacity.',
                    ),
                  ),
                  TextField(
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'NotoRegular',
                    ),
                    decoration: InputDecoration(
                      labelText: 'Units of transformer.',
                    ),
                  ),
                  DateTimePicker(
                    initialValue: '',
                    firstDate: DateTime(2000),
                    icon: Icon(Icons.calendar_today_outlined),
                    lastDate: DateTime(2100),
                    dateLabelText: 'Mft Date',
                    onChanged: (val) => print(val),
                    validator: (val) {
                      print(val);
                      return null;
                    },
                    onSaved: (val) => print(val),
                  ),
                  Row(

                    children: [

                      Text('Sealed      '),
                      Switch(
                        value: switchState,
                        onChanged: (bool value) {
                          setState(() {
                            switchState = !switchState;
                          });
                          //  print(value);
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Submit the data',
                    ),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 40),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
