// ignore_for_file: sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'card_image.dart';

// ignore: use_key_in_widget_constructors
class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      child: ListView(
        padding: const EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage("lib/assets/img/uno.jpg"),
          CardImage("lib/assets/img/dos.jpg"),
          CardImage("lib/assets/img/tres.jpg"),
          CardImage("lib/assets/img/cuatro.jpg"),
          CardImage("lib/assets/img/cinco.jpg"),
        ],
      ),
    );
  }
}
