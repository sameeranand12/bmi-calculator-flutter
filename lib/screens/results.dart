import 'package:bmi_calculator/Components/bottom_button.dart';
import 'package:bmi_calculator/Components/constants.dart';
import 'package:bmi_calculator/Components/reusable_card.dart';
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:bmi_calculator/Components/bottom_button.dart';

class ResultPage extends StatelessWidget {
  ResultPage({@required this.interpretation ,@required this.bmiResult , @required this.resultText});
  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Results'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 40),
                child: Text(
                  'Your Result',
                  style: kTitleText,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                  colour: kActiveCardColour,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Center(
                        child: Text(
                          resultText.toUpperCase(),
                          style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF24D876),
                          ),
                        ),
                      ),
                      Center(
                        child: Text(bmiResult,
                          style: TextStyle(
                            fontSize: 100,
                            fontWeight: FontWeight.bold,

                          ),
                        ),
                      ),
                      Center(
                        child: Text(interpretation.toUpperCase(),
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,

                          ),
                        ),
                      )
                    ],
                  ),
              ),
            ),
            BottomButton(onTap: (){
              Navigator.pop(context);
            } , buttonTitle: 'Re-Calculate')
          ],
        ));
  }
}
