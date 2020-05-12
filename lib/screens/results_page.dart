import 'package:bmicalculator/components/bottom_button.dart';
import 'package:bmicalculator/constants.dart';
import 'package:bmicalculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../components/reusable_card.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;
  ResultsPage(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.interpretation});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result :',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: kResultStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(interpretation,
                      style: kBodyTextStyle, textAlign: TextAlign.center),
                ],
              ),
            ),
          ),
          BottomButton(
            ButtonTitle: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
