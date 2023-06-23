// ignore_for_file: use_key_in_widget_constructors, duplicate_ignore
import 'package:flutter/material.dart';

// ignore: must_be_immutable, use_key_in_widget_constructors
class Gradientback extends StatelessWidget {
  String titulo = "Popular";
  Gradientback(this.titulo);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 7, 38, 215),
                Color.fromARGB(255, 50, 50, 220),
              ],
              begin: FractionalOffset(0.2, 0.0),
              end: FractionalOffset(1.0, 0.6),
              stops: [0.0, 0.6],
              tileMode: TileMode.clamp)),
      alignment: const Alignment(-0.9, -0.5),
      child: Text(
        titulo,
        style: const TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontFamily: "lato",
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
