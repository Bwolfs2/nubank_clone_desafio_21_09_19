import 'package:flutter/material.dart';

class CardBottomWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final Function() action;

  const CardBottomWidget( this.icon, this.text,{Key key, this.action}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: action,
      child: Card(
        elevation: 0.1,
        child: Container(
          constraints: BoxConstraints(
            minHeight: 100
          ),
          width: 100,
          padding: EdgeInsets.all(7),
           child: AspectRatio(
             aspectRatio: 1,
             child: Container(
               height: 100,
               child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: <Widget>[
                   Icon(icon, size: 35, color: Colors.white70),
                    Text(
                    text,
                      style: TextStyle(color: Colors.white70),
                    )
                 ],
               ),
             ),
           ),
        ),
      ),
    );
  }
}


