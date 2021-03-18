import 'package:farm_fair/UIconstants.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = "welcomescreen";
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: ListView(
            padding: EdgeInsets.only(top: 120, left: 8, right: 8),
            children: <Widget>[
              Center(
                  child: Text(
                'Welcome to FarmFair.',
                style: TextStyle(color: Colors.blue, fontSize: 32.0),
              )),

              SizedBox(
                height: 150.0,
              ),
              OutlineButtonRevamp(
                  text: 'Login',
                  horizontalPadding: 20,
                  verticalPadding: 20,
                  filler: Colors.green,
                  onPressed: () {}),
              SizedBox(
                height: 24,
              ),

              OutlineButtonRevamp(
                  text: 'Sign Up',
                  horizontalPadding: 20,
                  verticalPadding: 20,
                  filler: Colors.green,
                  onPressed: () {}),
              //RoundedButton(colour: Colors.blue, title: 'LOGIN',onPressed:(){ Navigator.pushNamed(context, Login.id);},),

              //  RoundedButton(colour: Colors.white, title: 'SIGN UP',onPressed:(){ Navigator.pushNamed(context, RegistrationScreen.id);},),
              // Padding(
              //   padding: const EdgeInsets.only(top: 25.0),
              //   child: Center(
              //       child: Text(
              //     'HERE FOR YOU.',
              //     style: TextStyle(
              //         color: Colors.blue,
              //         fontSize: 20.0,
              //         fontStyle: FontStyle.italic),
              //   )),
              // ),
              // Padding(
              //   padding: const EdgeInsets.only(top:15.0),
              //   child: Icon(FontAwesome.life_saver,color: Colors.blue,size: 75.0,),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
