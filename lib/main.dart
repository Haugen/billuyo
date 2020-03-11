import 'package:flutter/material.dart';

import 'package:billuyo/theme.dart';
import 'package:billuyo/screens/screens.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: BilluyoColors.seaweed,
        textTheme: GoogleFonts.ralewayTextTheme(),
      ),
      home: MainPage(),
    );
  }
}
