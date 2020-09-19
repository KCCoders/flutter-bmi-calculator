import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI Calculator',
      theme: ThemeData.dark().copyWith(
        primaryColor: kThemeColor,
        scaffoldBackgroundColor: kThemeColor,
        sliderTheme: SliderTheme.of(context).copyWith(
          activeTrackColor: Colors.white,
          inactiveTrackColor: kSecondaryColor,
          overlayColor: kAccentColorWithTransparency,
          thumbColor: kAccentColor,
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
          overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
        ),
      ),
      home: InputPage(),
    );
  }
}
