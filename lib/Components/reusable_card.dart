import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
//we have created the colour constructor so that we can pass on different colours to our cards.

//@required we can make the property compulsory
  ReusableCard({@required this.colour , this.cardChild , this.onPress});
  final Color colour;
  final Widget cardChild;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colour,
        ),
      ),
    );
  }
}