import 'package:flutter/material.dart';
import 'package:nubank_clone_desafio_21_09_19/src/home/widgets/card_bottom/card_bottom_widget.dart';

class CardBottomListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: CustomBehavior(),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          constraints: BoxConstraints(minHeight: 100),          
          padding: EdgeInsets.all(10),
          child: Row(
            children: <Widget>[
              CardBottomWidget(Icons.person_outline, "Indicar amigos"),
              CardBottomWidget(Icons.monetization_on, "Cobrar"),
              CardBottomWidget(Icons.money_off, "Depositar"),
              CardBottomWidget(Icons.more_horiz, "Transferir"),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}