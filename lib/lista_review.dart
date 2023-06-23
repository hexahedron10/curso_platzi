import 'review.dart';
import 'package:flutter/material.dart';

class Reviewlist extends StatelessWidget {
  const Reviewlist({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Review("lib/assets/img/Mundo.jpeg", "Edmundo Estrada",
            "Est es una Pagina de preuba", "Parece que vamos bien"),
        Review("lib/assets/img/uno.jpg", "Daniel Estrada",
            "Est es una Pagina de preuba", "Espero Aprender flutter"),
        Review("lib/assets/img/dos.jpg", "Adrian Estrada",
            "Est es una Pagina de preuba", "mañana otro paso mas")
      ],
    );
  }
}
