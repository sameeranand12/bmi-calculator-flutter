import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),

      body: Container(
        color: Color(0xDD1D1E33),
        margin :EdgeInsets.all(15.0),
        height: 200.0,
        width: 170.0,

      ),


    );
  }
}
//vvs