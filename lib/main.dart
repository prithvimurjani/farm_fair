import 'package:farm_fair/Dashboard.dart';
import 'package:farm_fair/DashboardBottomNavs/BidHistory.dart';
import 'package:farm_fair/DashboardBottomNavs/BidScreen.dart';
import 'package:farm_fair/DashboardBottomNavs/CreateBid.dart';
import 'package:farm_fair/DashboardBottomNavs/Settings.dart';
import 'package:farm_fair/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'WelcomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark(),
        initialRoute: WelcomeScreen.id,
        routes: {
          WelcomeScreen.id: (context) => WelcomeScreen(),
          LoginScreen.id: (context) => LoginScreen(),
          Dashboard.id: (context) => Dashboard(),
          CreateBid.id: (context) => CreateBid(),
          BidScreen.id: (context) => BidScreen(),
          BidHistory.id: (context) => BidHistory(),
          Settings.id: (context) => Settings(),
        });
  }
}
