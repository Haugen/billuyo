import 'package:billuyo/theme.dart';
import 'package:flutter/material.dart';

class AccountStatus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: BilluyoColors.darkishBlue,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          SizedBox(height: 10),
          Text(
            'Account status',
            style: BilluyoTextStyles.header(BilluyoColors.seaweed),
          ),
          SizedBox(height: 10),
          Text(
            '\$457,483',
            style: BilluyoTextStyles.largeHeader,
          ),
          SizedBox(height: 20),
          Text(
            'Amount Available for cash withdrawals.',
            style: BilluyoTextStyles.smallText(BilluyoColors.seaweed),
          ),
        ],
      ),
    );
  }
}
