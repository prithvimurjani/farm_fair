import 'package:farm_fair/LoginScreen.dart';
import 'package:farm_fair/UIconstants.dart';
import 'package:flutter/material.dart';
import 'LoginScreen.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = "welcomescreen";
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Stack(
      children: <Widget>[
        new Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage(
                  "farm_fair_images/buyersellerchoicebackground.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 2.5,
                  width: MediaQuery.of(context).size.width - 32,
                  child: Card(
                    color: Colors.transparent,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Choose your account type',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 36,
                          ),
                          OutlineButtonRevamp(
                              text: 'Buyer',
                              horizontalPadding: 100,
                              verticalPadding: 20,
                              filler: Color(0xFF185EC7),
                              onPressed: () {}),
                          SizedBox(
                            height: 24,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 1.5,
                            height: 2,
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          OutlineButtonRevamp(
                              text: 'Seller',
                              horizontalPadding: 100,
                              verticalPadding: 20,
                              filler: Color(0xFF185EC7),
                              onPressed: () {}),
                          SizedBox(
                            height: 24,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, LoginScreen.id);
                            },
                            child: Text(
                              'Login?',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    ));
    // return SafeArea(
    //   child: Scaffold(
    //     backgroundColor: Colors.black,
    //     body: Padding(
    //       padding: EdgeInsets.symmetric(horizontal: 24.0),
    //       child: ListView(
    //         padding: EdgeInsets.only(top: 120, left: 8, right: 8),
    //         children: <Widget>[
    //           Center(
    //               child: Text(
    //             'Welcome to FarmFair.',
    //             style: TextStyle(color: Colors.blue, fontSize: 32.0),
    //           )),

    //           SizedBox(
    //             height: 150.0,
    //           ),

    //           OutlineButtonRevamp(
    //               text: 'Sign Up',
    //               horizontalPadding: 20,
    //               verticalPadding: 20,
    //               filler: Colors.green,
    //               onPressed: () {}),
    //           //RoundedButton(colour: Colors.blue, title: 'LOGIN',onPressed:(){ Navigator.pushNamed(context, Login.id);},),

    //           //  RoundedButton(colour: Colors.white, title: 'SIGN UP',onPressed:(){ Navigator.pushNamed(context, RegistrationScreen.id);},),
    //           // Padding(
    //           //   padding: const EdgeInsets.only(top: 25.0),
    //           //   child: Center(
    //           //       child: Text(
    //           //     'HERE FOR YOU.',
    //           //     style: TextStyle(
    //           //         color: Colors.blue,
    //           //         fontSize: 20.0,
    //           //         fontStyle: FontStyle.italic),
    //           //   )),
    //           // ),
    //           // Padding(
    //           //   padding: const EdgeInsets.only(top:15.0),
    //           //   child: Icon(FontAwesome.life_saver,color: Colors.blue,size: 75.0,),
    //           // ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
