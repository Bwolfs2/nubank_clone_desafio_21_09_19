import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'widgets/card_bottom/card_bottom_widget.dart';
import 'widgets/card_bottom_list/card_bottom_list_widget.dart';
import 'widgets/card_central/card_central_widget.dart';
import 'widgets/card_central_list/card_central_list_widget.dart';
import 'widgets/header/header_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).primaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            HeaderWidget(),
            CardCentralListWidget(),
            CardBottomListWidget()
          ],
        ),
      ),
    );
  }
}
