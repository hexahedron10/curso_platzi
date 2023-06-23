import 'package:flutter/material.dart';
import 'description_place.dart';
import 'header_appbar.dart';
import 'lista_review.dart';

class HomeTrips extends StatelessWidget {
  const HomeTrips({super.key});
  @override
  Widget build(BuildContext context) {
    String descriptionDumy =
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged,";

    return Stack(
      children: <Widget>[
        ListView(
          children: [
            DescriptionPlace("Bahamas", 5, descriptionDumy),
            const Reviewlist(),
          ],
        ),
        //Gradientback("Popular")
        HeaderAppbar()
      ],
    );
  }
}
