import 'package:flutter/material.dart';
import 'package:nubank_clone_desafio_21_09_19/src/home/home_module.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Nubank Clone',
      theme: ThemeData(
         brightness: Brightness.light,
        primarySwatch: Colors.blue,
        primaryColor: Color(0xFF84269C),
        canvasColor: Color(0xFF84269C),
        cardColor: Color(0xFF9241A7),        
        //0xff00BDC9 cor da fatura
        //0xff9BD02E verde do limite disponivel
      ),
      home: HomeModule(),
    );
  }
}