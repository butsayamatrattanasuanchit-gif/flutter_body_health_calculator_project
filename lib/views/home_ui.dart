import 'package:flutter/material.dart';
import 'package:flutter_body_health_calculator_project/views/about_ui.dart';
import 'package:flutter_body_health_calculator_project/views/bmi_ui.dart';
import 'package:flutter_body_health_calculator_project/views/bmr_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({super.key});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  int _currentIndex = 0;

  List subViewShow = [
    BmiUI(),
    AboutUI(),
    BmrUI(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // สีพื้นหลังของ Scaffold
      backgroundColor: Colors.white,
      // ส่วนของ AppBar()
      appBar: AppBar(
        // ส่วนของ BottomNavigationBar()
        backgroundColor: Colors.deepOrange,
        title: const Text(
          'Body ว้าว',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        selectedItemColor: Colors.deepOrange,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'BMI',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'About',
          ),
          const BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.heartCircleCheck),
            label: 'BMR',
          ),
        ],
      ),
      body: subViewShow[_currentIndex],
    );
  }
}
