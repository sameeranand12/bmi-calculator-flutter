import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


const bottomContainerHeight = 80.0;
const activeCardColour = Color(0xFF1D1E33);
const inactiveCardColour = Color(0xFF111328);
const bottomContainerColor = 0xFFEB1555;
enum Gender{
  male,
  female,
}


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender selectedGender;



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
                      onPress: (){
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      colour:selectedGender == Gender.male ? activeCardColour : inactiveCardColour,
                      cardChild: IconContent(icon: FontAwesomeIcons.mars,
                                             label : 'MALE',
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onPress: (){
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      colour: selectedGender == Gender.female ? activeCardColour: inactiveCardColour,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.female,
                        label: 'FEMALE',
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: inactiveCardColour,
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      colour: inactiveCardColour,
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
        ),
    );
  }
}
///gdccvv


///sfweefef
// Color maleCardColour = inactiveCardColour;
// Color femaleCardColour = inactiveCardColour;
//
//   void updateColour(Gender selectedGender){
//     if(selectedGender == Gender.male){
//       if(maleCardColour == inactiveCardColour){
//         maleCardColour =activeCardColour;
//         femaleCardColour = inactiveCardColour;
//       }else{
//         maleCardColour= inactiveCardColour;
//       }
//     }
//     if(selectedGender == Gender.female){
//       if(femaleCardColour == inactiveCardColour){
//         femaleCardColour= activeCardColour;
//         maleCardColour = inactiveCardColour;
//       }else{
//         femaleCardColour = inactiveCardColour;
//       }
//   }
//   }

