import 'package:farm_fair/Dashboard.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const String id = "loginscreen";
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Stack(
      children: <Widget>[
        new Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("farm_fair_images/loginform.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Center(
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, Dashboard.id);
            },
            child: Container(
              color: Colors.black,
              height: 30,
              width: 80,
            ),
          ),
        ),
      ],
    ));
  }
}
