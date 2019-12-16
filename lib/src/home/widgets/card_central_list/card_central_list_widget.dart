import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import 'cards/card_cartao_credito/card_cartao_credito_widget.dart';
import 'cards/card_nu_conta/card_nu_conta_widget.dart';

class CardCentralListWidget extends StatefulWidget {
  @override
  _CardCentralListWidgetState createState() => _CardCentralListWidgetState();
}

class _CardCentralListWidgetState extends State<CardCentralListWidget> {
  final controller = PageController();

  int selectedPage = 0;

  @override
  void initState() { 
    super.initState();
    controller.addListener((){
      setState(() {
       selectedPage = (controller.page).toInt(); 
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          constraints: BoxConstraints(minHeight: 300, maxHeight: 400),
          height: MediaQuery.of(context).size.height * .6,
          child: PageView(
            controller: controller,
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              CardCartaoCreditoWidget(),
               CardNuContaWidget(),
                CardCartaoCreditoWidget(),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DotsIndicator(
              dotsCount: 3,
              position: selectedPage,
              decorator: DotsDecorator(
                  size: Size(4, 4),
                  activeSize: Size(5, 5),
                  color: Colors.white54,
                  activeColor: Colors.white),
            )
          ],
        )
      ],
    );
  }
}
