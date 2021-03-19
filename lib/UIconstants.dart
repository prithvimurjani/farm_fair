import 'package:flutter/material.dart';

class OutlineButtonRevamp extends StatelessWidget {
  OutlineButtonRevamp(
      {this.text,
      this.horizontalPadding,
      this.verticalPadding,
      this.filler,
      this.onPressed});
  double horizontalPadding;
  double verticalPadding;
  String text;
  Function onPressed;
  Color filler = Colors.black;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      splashColor: Color(0xFF185EC7),
      hoverColor: Color(0xFF185EC7),
      padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding, vertical: verticalPadding),
      color: filler,
      shape: RoundedRectangleBorder(
        side: BorderSide(
            color: Color(0xFF185EC7), width: 2.0, style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Text(
        text,
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
      ),
      onPressed: onPressed,
    );
  }
}
