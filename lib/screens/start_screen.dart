import 'package:billuyo/theme.dart';
import 'package:billuyo/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          AccountStatus(),
          Container(
            color: BilluyoColors.almostWhite,
            child: Column(
              children: <Widget>[
                SizedBox(height: 8),
                ActionCard(
                  title: 'Cobrar',
                  backgroundColor: BilluyoColors.darkSkyBlue,
                  text: 'Solicita el pago de tus servicios prestados.',
                  linkText: 'Generar cobro',
                  navbarIndex: 1,
                ),
                ActionCard(
                  title: 'Transferencias',
                  backgroundColor: BilluyoColors.aquamarine,
                  text: 'As movimientos personales o a terceros.',
                  linkText: 'Transferir',
                  navbarIndex: 2,
                ),
                ActionCard(
                  title: 'Recargar celular',
                  backgroundColor: BilluyoColors.seaweed,
                  text:
                      'No dejes de hablar con tu familia, recarga tu celular.',
                  linkText: 'Recargar',
                  navbarIndex: 3,
                ),
                SizedBox(height: 8),
              ],
            ),
          ),
          RecentMovements(),
          PromoCard(
            imageText: SvgPicture.asset('assets/recomienda.svg'),
            icon: SvgPicture.asset('assets/paper_ariplain_icon.svg'),
            backgroundColor: BilluyoColors.aquamarine,
          ),
          PromoCard(
            imageText: SvgPicture.asset('assets/ver_como_usar_el_app.svg'),
            icon: SvgPicture.asset('assets/phone_icon.svg'),
            backgroundColor: BilluyoColors.darkSkyBlue,
            imageRight: false,
          ),
        ],
      ),
    );
  }
}
