import 'package:flutter/material.dart';
import 'botton_purple.dart';

class DescriptionPlace extends StatelessWidget {
  String namePlace;
  int stars;
  String descripcionplace;

  DescriptionPlace(this.namePlace, this.stars, this.descripcionplace);

  @override
  Widget build(BuildContext context) {
    //define variabes que pueden ser dinamicas daniel
//ESTRELLA CON BORDER
    final starborder = Container(
      margin: const EdgeInsets.only(
        top: 303.0,
        right: 3.0,
      ),
      child: const Icon(
        Icons.star_border,
        color: Color.fromARGB(255, 243, 170, 33),
      ),
    );
//ESTRELLA CON RELLENADA A LA MITAD
    final starhalf = Container(
      margin: const EdgeInsets.only(
        top: 303.0,
        right: 3.0,
      ),
      child: const Icon(
        Icons.star_half,
        color: Color.fromARGB(255, 243, 170, 33),
      ),
    );
//ESTRELLAS SEPARADAS
    final stars = Container(
      margin: const EdgeInsets.only(
        top: 303.0,
        right: 3.0,
      ),
      child: const Icon(
        Icons.star,
        color: Color.fromARGB(255, 243, 170, 33),
      ),
    );
//PRINCIPAL CON LA QUE EMPEZAMOS EL CURSO PARE DEFINIR EL TITULO DUNWIL ELLA
    final titleStars = Row(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(
            top: 300.0,
            left: 20.0,
            right: 20.0,
          ),
          child: Text(
            namePlace,
            style: const TextStyle(
              fontSize: 20.0,
              //fontFamily: "lato",
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[stars, stars, stars, starhalf, starborder],
        )
      ],
    );

    final descripcion = Container(
        margin: const EdgeInsets.only(
          top: 20.0,
          right: 20.0,
          left: 20.0,
        ),
        child: Text(descripcionplace,
            style: const TextStyle(
                fontFamily: "Lato",
                fontSize: 16.0,
                //fontFamily: "lato",
                fontWeight: FontWeight.bold,
                color: Color(0xFF56575a))));
//aqui me retorna la variable de titleStars
    /*return titleStars;*/
//pero tambien me puede regresar un widget colum con la variables creadas.

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[titleStars, descripcion, ButtonPurple("Navegar")],
    );
  }
}
