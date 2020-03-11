import 'package:billuyo/widgets/account_status.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        AccountStatus(),
      ],
    );
  }
}
