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
      splashColor: Colors.green,
      hoverColor: Colors.green,
      padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding, vertical: verticalPadding),
      color: filler,
      shape: RoundedRectangleBorder(
        side: BorderSide(
            color: Colors.green, width: 3.0, style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Text(
        text,
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
      ),
      onPressed: onPressed,
    );
  }
}
