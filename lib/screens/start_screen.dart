import 'package:billuyo/theme.dart';
import 'package:billuyo/widgets/widgets.dart';
import 'package:flutter/material.dart';

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
                ),
                ActionCard(
                  title: 'Transferencias',
                  backgroundColor: BilluyoColors.aquamarine,
                  text: 'As movimientos personales o a terceros.',
                  linkText: 'Transferir',
                ),
                ActionCard(
                  title: 'Recargar celular',
                  backgroundColor: BilluyoColors.seaweed,
                  text:
                      'No dejes de hablar con tu familia, recarga tu celular.',
                  linkText: 'Recargar',
                ),
                SizedBox(height: 8),
              ],
            ),
          ),
          RecentMovements(),
        ],
      ),
    );
  }
}
