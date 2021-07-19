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
                    style: TextStyle(fontSize: 30),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Transformer ID.',
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Model Name',
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Company',
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Tested Quality',
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Address',
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'City',
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'State',
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Cost',
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Winding',
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Guarantee Period',
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Oil Capacity.',
                    ),
                  ),
                  TextField(
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
