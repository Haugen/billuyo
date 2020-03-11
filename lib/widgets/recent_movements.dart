import 'package:billuyo/theme.dart';
import 'package:billuyo/utils/enums.dart';
import 'package:billuyo/widgets/recent_movements_row.dart';
import 'package:flutter/material.dart';

class RecentMovements extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: 16),
            child: Text(
              'Movimientos recientes.',
              style: BilluyoTextStyles.header(),
            ),
          ),
          RecentMovementsRow(
            date: 'Oct. 03',
            typeIcon: Icon(Icons.monetization_on),
            amount: '405,984',
            oddRow: true,
            transactionType: TransactionType.incoming,
          ),
          RecentMovementsRow(
            date: 'Sept. 23',
            typeIcon: Icon(Icons.transform),
            amount: '10,000',
            oddRow: false,
            transactionType: TransactionType.outgoing,
          ),
          RecentMovementsRow(
            date: 'Sept. 01',
            typeIcon: Icon(Icons.usb),
            amount: '20,000',
            oddRow: true,
            transactionType: TransactionType.outgoing,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 24),
            child: Text(
              'Ver historial'.toUpperCase(),
              style: BilluyoTextStyles.actionText(BilluyoColors.darkishBlue),
            ),
          )
        ],
      ),
    );
  }
}
