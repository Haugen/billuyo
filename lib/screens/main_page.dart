import 'package:billuyo/screens/screens.dart';
import 'package:billuyo/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
        title: SvgPicture.asset('assets/blue_icon.svg'),
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
            icon: Icon(Icons.account_balance),
            title: Text('Start'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            title: Text('Payment'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.transform),
            title: Text('Trans.'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.battery_charging_full),
            title: Text('Charge'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help),
            title: Text('Help'),
          ),
        ],
      ),
      body: _getScreen(),
    );
  }
}
