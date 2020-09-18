import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'gender_picker.dart';
import 'constants.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

enum Gender {
  MALE,
  FEMALE,
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 72;
  int weight = 100;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.MALE;
                      });
                    },
                    color: selectedGender == Gender.MALE
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: GenderPickerWidget(
                        faIcon: FontAwesomeIcons.mars, text: 'MALE'),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.FEMALE;
                      });
                    },
                    color: selectedGender == Gender.FEMALE
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: GenderPickerWidget(
                        faIcon: FontAwesomeIcons.venus, text: 'FEMALE'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: kBigText,
                      ),
                      Text(
                        'in',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  Slider(
                    min: 48,
                    max: 84,
                    value: height.toDouble(),
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.toInt();
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  color: kActiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'WEIGHT',
                        style: kLabelTextStyle,
                      ),
                      Text(
                        weight.toString(),
                        style: kBigText,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  color: kActiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'WEIGHT',
                        style: kLabelTextStyle,
                      ),
                      Text(
                        age.toString(),
                        style: kBigText,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
          Container(
            color: Color(0xFFEB1555),
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: 80.0,
            child: Text('CALCULATE BMI', style: kLabelTextStyle),
          )
        ],
      ),
    );
  }
}
