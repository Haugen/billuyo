import 'package:billuyo/providers/main_provider.dart';
import 'package:flutter/material.dart';

import 'package:billuyo/theme.dart';
import 'package:billuyo/screens/screens.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: BilluyoColors.seaweed,
        textTheme:
            GoogleFonts.ralewayTextTheme(Theme.of(context).textTheme).copyWith(
          body1: TextStyle(
            fontSize: 16,
            color: BilluyoColors.darkishBlue,
          ),
        ),
      ),
      home: ChangeNotifierProvider(
        create: (context) => MainProvider(),
        child: MainPage(),
      ),
    );
  }
}
