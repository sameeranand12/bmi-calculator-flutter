import 'package:flutter/material.dart';

   const labelTextStyle = TextStyle(
                              fontSize: 18.0,
                            color : Color(0xFF8D8E98),
);
    const sizedBox =15.0;

class IconContent extends StatelessWidget {
  IconContent({this.icon , this.label});
  final IconData icon;
  final String label;
  //jjj
//hyubjjk
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
          style:labelTextStyle,
          ),
      ],

    );
  }
}