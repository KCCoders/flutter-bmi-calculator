import 'package:flutter/material.dart';
import '../constants.dart';

const iconSize = 80.0;

class GenderPickerWidget extends StatelessWidget {
  final IconData faIcon;
  final String text;

  GenderPickerWidget({@required this.faIcon, @required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          faIcon,
          size: iconSize,
          color: Colors.white,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          text,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
