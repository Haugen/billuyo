import 'package:billuyo/theme.dart';
import 'package:flutter/material.dart';

class ActionCard extends StatelessWidget {
  final String title;
  final Color backgroundColor;
  final String text;
  final String linkText;
  // final String linkRoute;

  ActionCard({
    @required this.title,
    this.backgroundColor,
    @required this.text,
    @required this.linkText,
    // @required this.linkRoute,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      child: Card(
        color: backgroundColor ?? BilluyoColors.darkSkyBlue,
        elevation: 6,
        child: Container(
          padding: EdgeInsets.all(16),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: BilluyoTextStyles.header(),
              ),
              SizedBox(height: 16),
              Text(text),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    linkText.toUpperCase(),
                    style: BilluyoTextStyles.actionText(),
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
