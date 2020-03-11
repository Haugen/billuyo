import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PromoCard extends StatelessWidget {
  final SvgPicture imageText;
  final SvgPicture icon;
  final bool imageRight;
  final Color backgroundColor;
  final link;

  PromoCard({
    @required this.imageText,
    @required this.icon,
    this.imageRight = true,
    this.backgroundColor,
    this.link,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Implement tap
      },
      child: Container(
        color: backgroundColor,
        padding: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          textDirection: imageRight ? TextDirection.ltr : TextDirection.rtl,
          children: <Widget>[
            imageText,
            icon,
          ],
        ),
      ),
    );
  }
}
