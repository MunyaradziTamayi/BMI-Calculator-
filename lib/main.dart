import 'package:flutter/material.dart';
import 'Result_page.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme:ThemeData.dark().copyWith(
          primaryColor: Color(0xFF0A0E21),
          scaffoldBackgroundColor: Color(0xFF0A0E21)
      ),
      initialRoute: '/',
      routes: {
        '/': (context)  => InputPage(),
        '/Resultpage':(context)=> Result_page(),
      }

    );
  }
}
