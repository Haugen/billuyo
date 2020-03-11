import 'package:flutter/material.dart';

import 'package:billuyo/theme.dart';
import 'package:billuyo/utils/enums.dart';

class RecentMovementsRow extends StatelessWidget {
  final String date;
  final Icon typeIcon;
  final String amount;
  final bool oddRow;
  final TransactionType transactionType;

  RecentMovementsRow({
    @required this.date,
    this.typeIcon,
    @required this.amount,
    this.oddRow = true,
    this.transactionType,
  });

  Widget _getAmountText() {
    String prefix = transactionType == TransactionType.incoming ? '\$' : '-\$';
    Color color = transactionType == TransactionType.incoming
        ? BilluyoColors.darkishBlue
        : Colors.red;
    return Text(
      '$prefix $amount',
      style: TextStyle(color: color),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: oddRow ? BilluyoColors.almostWhite : Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            width: 120,
            child: Text(date),
          ),
          typeIcon ?? Icon(Icons.mic_none),
          Expanded(
            child: Container(
              child: _getAmountText(),
              alignment: Alignment.centerRight,
            ),
          ),
        ],
      ),
    );
  }
}
