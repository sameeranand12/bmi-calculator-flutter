import 'package:flutter/material.dart';
import 'constants.dart';

    const sizedBox =15.0;

class IconContent extends StatelessWidget {
  IconContent({this.icon , this.label});
  final IconData icon;
  final String label;
  //jjjfrf
//hyubjjkhh
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size:80 ,
        ),
        SizedBox(
          height: sizedBox,
        ),
        Text(label,
          style:kLabelTextStyle,
          ),
      ],

    );
  }
}