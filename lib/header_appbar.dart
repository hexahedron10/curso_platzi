import 'package:flutter/material.dart';
import 'gradient_back.dart';
import 'card_image_list.dart';

// ignore: use_key_in_widget_constructors
class HeaderAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[Gradientback("Bienvenido"), CardImageList()],
    );
  }
}
