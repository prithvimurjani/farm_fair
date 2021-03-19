import 'package:farm_fair/DashboardBottomNavs/BidHistory.dart';
import 'package:farm_fair/DashboardBottomNavs/CreateBid.dart';
import 'package:farm_fair/DashboardBottomNavs/Settings.dart';
import 'package:flutter/material.dart';
import 'package:farm_fair/DashboardBottomNavs/BidScreen.dart';

class Dashboard extends StatefulWidget {
  static const String id = "dashboard";
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final _pageOptions = [
      CreateBid(),
      BidScreen(),
      BidHistory(),
      Settings(),
    ];

    return MaterialApp(
      //color: Colors.black,
      home: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Farm Fair'),
          backgroundColor: Color(0xFF185EC7),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.contact_mail),
            )
          ],
        ),
        // backgroundColor: Colors.black,
        body: _pageOptions[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.edit,
                color: Colors.white,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.monetization_on,
                color: Colors.white,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.book,
                color: Colors.white,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                color: Colors.white,
              ),
              label: "",
            )
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Color(0xFF185EC7),
          backgroundColor: Color(0xFF185EC7),
          unselectedItemColor: Colors.white,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      )),
    );
  }
}
