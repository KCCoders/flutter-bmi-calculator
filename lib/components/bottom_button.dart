import 'package:flutter/cupertino.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  final Function onTap;
  final String buttonTitle;

  BottomButton({@required this.buttonTitle, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Color(0xFFEB1555),
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.only(bottom: 0),
        width: double.infinity,
        height: 80.0,
        child: Center(child: Text(buttonTitle, style: kLargeButtonTextStyle)),
      ),
    );
  }
}
