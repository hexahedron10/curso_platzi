import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ButtonPurple extends StatelessWidget {
  String buttonTex = "Navegar";
  // ignore: use_key_in_widget_constructors
  ButtonPurple(this.buttonTex);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("Navegando"),
        ));
      },
      child: Container(
        margin: const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
        height: 50.0,
        width: 180.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            gradient: const LinearGradient(
                colors: [
                  Color.fromARGB(255, 50, 50, 220),
                  Color.fromARGB(255, 137, 36, 226),
                ],
                begin: FractionalOffset(0.2, 0.0),
                end: FractionalOffset(1.0, 0.6),
                stops: [0.0, 0.6],
                tileMode: TileMode.clamp)),
// ignore: sort_child_properties_last
        child: Center(
          child: Text(
            buttonTex,
            style: const TextStyle(
                fontSize: 18.0, fontFamily: "lato", color: Colors.white),
          ),
        ),
      ),
    );
  }
}
