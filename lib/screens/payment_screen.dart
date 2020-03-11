import 'package:billuyo/theme.dart';
import 'package:billuyo/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PaymentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: Text(
              'Mandar cuenta de cobro.',
              style: BilluyoTextStyles.header(),
            ),
          ),
          CustomTextField(
            title: 'Monto a cobrar',
            textInputType: TextInputType.number,
            caption: 'Elegir la cantidad que deseas transferir.',
          ),
          CustomTextField(
            title: '# celular',
            textInputType: TextInputType.phone,
            caption: 'Elegir el medio por el cual quieres transferir.',
          ),
          SizedBox(height: 16),
          Text(
            '* Al usar el app Billuyo aceptas terminos y condiciones. Al aceptar se mandara un mensaje de texto  a la persona para generar el pago.',
            style: BilluyoTextStyles.smallText(BilluyoColors.greyishBrown),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
