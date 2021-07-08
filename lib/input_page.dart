import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


const bottomContainerHeight = 80.0;
const activeCardColour = Color(0xFF1D1E33);
const inactiveCardColour = Color(0xFF111328);
const bottomContainerColor = 0xFFEB1555;



class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color maleCardColour = inactiveCardColour;
  Color femaleCardColour = inactiveCardColour;

    void updateColour(int gender){
      if(gender == 1){
        if(maleCardColour == inactiveCardColour){
          maleCardColour =activeCardColour;
          femaleCardColour = inactiveCardColour;
        }else{
          maleCardColour= inactiveCardColour;
        }
      }
      if(gender == 2){
        if(femaleCardColour == inactiveCardColour){
          femaleCardColour= activeCardColour;
          maleCardColour = inactiveCardColour;
        }else{
          femaleCardColour = inactiveCardColour;
        }
    }
    }



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
                    child: GestureDetector(
                      onTap: (){
                          setState(() {
                            updateColour(1);
                          });
                        print('male card is pressed');
                      },
                      child: ReusableCard(
                        colour:maleCardColour,
                        cardChild: IconContent(icon: FontAwesomeIcons.mars,
                                               label : 'MALE',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          updateColour(2);
                        });
                      },
                      child: ReusableCard(
                        colour: femaleCardColour,
                        cardChild: IconContent(
                          icon: FontAwesomeIcons.female,
                          label: 'FEMALE',
                        ),
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
        ));
  }
}




//vvs
