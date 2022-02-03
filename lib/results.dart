import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'bottom_button.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Your Result",
                  style: kResult,
                ),
              ),
            ),
          ),
          Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Normal",
                      style: kOverweight,
                    ),
                    Text(
                      "20.0",
                      style: kBMITextStyle,
                    ),
                    Text(
                      "Your BMI result is quite low, you should eat more!",
                      textAlign: TextAlign.center,
                      style: kBodyTextStyle,
                    ),
                    BottomButton(
                      buttonTitle: "Calculate",
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ResultPage()));
                      },
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
