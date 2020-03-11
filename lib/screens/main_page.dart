import 'package:billuyo/screens/screens.dart';
import 'package:billuyo/theme.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _index = 0;

  Widget _getScreen() {
    switch (_index) {
      case 0:
        return StartScreen();
        break;
      case 1:
        return PaymentScreen();
        break;
      case 2:
        return TransactionsScreen();
        break;
      case 3:
        return ChanrgeScreen();
        break;
      case 4:
        return HelpScreen();
        break;
      default:
        return StartScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Billuyo'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: BilluyoColors.darkishBlue,
        backgroundColor: BilluyoColors.almostWhite,
        currentIndex: _index,
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit),
            title: Text('Start'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit),
            title: Text('Payment'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit),
            title: Text('Trans.'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit),
            title: Text('Charge'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit),
            title: Text('Help'),
          ),
        ],
      ),
      body: _getScreen(),
    );
  }
}
