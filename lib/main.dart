import 'package:flutter/material.dart';

import 'homepage.dart';
import 'listpage.dart';
import 'bookpage.dart';

void main() {
  runApp(Pomona());
}

class Pomona extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //TODO set the theme data
      theme: ThemeData(
          colorScheme: ColorScheme(
            surface: Color(0xFFdfe4f2),
            onSecondary: Color(0xFF060e26),
            brightness: Brightness.light,
            onError: Colors.white,
            secondaryVariant: Color(0xFFa6700d),
            error: Colors.red[900],
            onBackground: Color(0xFF060e26),
            onPrimary: Color(0xFF8f94A6),
            onSurface: Color(0xFF060e26),
            background: Color(0xFFdfe4f2),
            secondary: Color(0xFFF29F05),
            primary: Color(0xFF060e26),
            primaryVariant: Color(0xFF8f94A6),
          ),
          primaryColor: Color(0xFF060e26),
          accentColor: Color(0xFFF29F05),
          //TODO replace with poppins
          fontFamily: 'Raleway'),
      routes: {
        '/': (BuildContext context) => Homepage(),
        'listpage': (BuildContext context) => ListPage(),
        'bookpage': (BuildContext context) => BookPage(),
      },
    );
  }
}
