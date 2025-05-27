import 'package:flutter/material.dart';

import 'constants.dart';


class Reusable_card_age_weight extends StatelessWidget {

  Reusable_card_age_weight({required this.colour,required this.cardChild});

   final Color colour;
   final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(

          child:cardChild,
          height: 240,
          width: 450,
          margin: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
          decoration: BoxDecoration(
              color:colour,
              borderRadius:BorderRadius.circular(10)
          ),

        )

      ],
    );
  }
}