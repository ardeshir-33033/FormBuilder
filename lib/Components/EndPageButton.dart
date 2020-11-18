import 'package:flutter/material.dart';


class EndPageButton extends StatelessWidget {
  String title;
  Color buttonColor;
  Color textColor;
  Function Press;

  EndPageButton({@required this.title, @required this.buttonColor, this.Press , this.textColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        width: 70,
        height: 40,
        child: Center(
          child: RaisedButton(
            padding: EdgeInsets.symmetric(vertical: 0),
            onPressed: () {
              Press;
            },
            color: buttonColor,
            child: Text(
              title,
              style: TextStyle(fontSize: 13 , color: textColor ?? Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
