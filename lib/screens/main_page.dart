import 'package:billuyo/providers/main_provider.dart';
import 'package:billuyo/screens/screens.dart';
import 'package:billuyo/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Widget _getScreen(MainProvider mp) {
    switch (mp.navbarIndex) {
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
    MainProvider _mainProvider = Provider.of<MainProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset('assets/blue_icon.svg'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: BilluyoColors.darkishBlue,
        backgroundColor: BilluyoColors.almostWhite,
        currentIndex: _mainProvider.navbarIndex,
        onTap: (index) {
          _mainProvider.changeNavbarIndex(index);
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance),
            title: Text('Inicio'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            title: Text('Cobro'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.transform),
            title: Text('Trans.'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.battery_charging_full),
            title: Text('Recarga'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help),
            title: Text('Ayuda'),
          ),
        ],
      ),
      body: _getScreen(_mainProvider),
    );
  }
}
