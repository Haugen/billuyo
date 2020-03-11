import 'package:billuyo/providers/main_provider.dart';
import 'package:billuyo/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ActionCard extends StatelessWidget {
  final String title;
  final Color backgroundColor;
  final String text;
  final String linkText;
  final int navbarIndex;

  ActionCard({
    @required this.title,
    this.backgroundColor,
    @required this.text,
    @required this.linkText,
    this.navbarIndex,
  });

  @override
  Widget build(BuildContext context) {
    MainProvider _mainProvider = Provider.of<MainProvider>(context);

    return InkWell(
      onTap: () {
        if (navbarIndex != null) {
          _mainProvider.changeNavbarIndex(navbarIndex);
        }
      },
      child: Container(
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
      ),
    );
  }
}
