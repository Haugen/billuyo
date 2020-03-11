import 'package:billuyo/theme.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String title;
  final TextInputType textInputType;
  final String caption;

  CustomTextField({
    this.title,
    this.textInputType,
    this.caption,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: BilluyoTextStyles.smallText(),
                  ),
                  TextField(
                    decoration: null,
                    keyboardType: textInputType,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16),
            child: Text(
              caption,
              style: BilluyoTextStyles.smallText(BilluyoColors.greyishBrown),
            ),
          ),
        ],
      ),
    );
  }
}
