import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SvgPicture.asset(
                "assets/logo.svg",
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Vilson",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.keyboard_arrow_down,
              color: Colors.white.withOpacity(.5),
              size: 30,
            ),
          )
        ],
      ),
    );
  }
}
