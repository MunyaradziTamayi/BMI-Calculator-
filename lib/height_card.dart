import 'package:flutter/material.dart';

import 'card_Content.dart';
import 'constants.dart';

class HeightCard extends StatelessWidget {

  HeightCard({required this.colour,required this.cardChild});

  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      color: colour,

      );
  }
}