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
            'Estado de cuenta.',
            style: BilluyoTextStyles.header(BilluyoColors.seaweed),
          ),
          SizedBox(height: 20),
          Text(
            '\$457,483',
            style: BilluyoTextStyles.largeHeader,
          ),
          SizedBox(height: 20),
          Text(
            'Monto Disponible para retiros con Effecty.',
            style: BilluyoTextStyles.smallText(BilluyoColors.seaweed),
          ),
        ],
      ),
    );
  }
}
