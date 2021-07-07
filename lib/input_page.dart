import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const colorHexCode = 0xFF1D1E33;
const bottomContainerColor = 0xFFEB1555;
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
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      colour: Color(colorHexCode),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: Color(colorHexCode),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: Color(colorHexCode),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      colour: Color(colorHexCode),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(colour: Colors.blue),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color(bottomContainerColor),
              ),
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            )
          ],
        ));
  }
}

class ReusableCard extends StatelessWidget {
//we have created the colour constructor so that we can pass on different colours to our cards.

//@required we can make the property compulsory
  ReusableCard({@required this.colour});
  final Color colour;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: colour,
      ),
    );
  }
}
//vvs
