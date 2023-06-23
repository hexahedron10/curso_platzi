import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Review extends StatelessWidget {
  String pathImage = "lib/assets/img/Mundo.jpeg";
  String name = "Edmundo Estrada Gonzalez";
  String details = "1 Review 5 Photos";
  String coment = "esto es un lugar maravilloso los invito a conocerlo";

  Review(this.pathImage, this.name, this.details, this.coment, {super.key});
  @override
  Widget build(BuildContext context) {
    //widget para los comentarios
    final userComent = Container(
      margin: const EdgeInsets.only(left: 20.0),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: const TextStyle(
            fontFamily: "lato", fontSize: 13.0, color: Color(0xFFa3a5a7)),
      ),
    );
    //WIDGET PARA LA INFORMACION
    final userInfo = Container(
      margin: const EdgeInsets.only(left: 20.0),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: const TextStyle(
            fontFamily: "lato", fontSize: 13.0, fontWeight: FontWeight.w900),
      ),
    );

//WIDGET PARRA EL NOMBRE DONDE SE AGREGA ELK NOMBRE COMO VARIABLE EN LA PARTE DE ARRIBA
    final userName = Container(
      margin: const EdgeInsets.only(left: 20.0),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: const TextStyle(fontFamily: "lato", fontSize: 17.0),
      ),
    );

    //WIDGET USERDETAIL MANDA A LLAMAR HA  userName, userInfo, userComen
    final userDetail = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[userName, userInfo, userComent],
    );

// se crea la foto redonda es el pirmer paso de este archivo.
    final photo = Container(
      margin: const EdgeInsets.only(
        top: 20.0,
        left: 20.0,
      ),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage))),
    );
    //es este returns esta la clave para entender este curso RETURNA EN EL ROW
    // PHOTO Y  userDetail
    return Row(
      children: <Widget>[photo, userDetail],
    );
  }
}
