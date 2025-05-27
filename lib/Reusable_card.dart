import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colour,required this.cardChild});

  final Color colour;
  final Widget cardChild;
  // final Function onPress;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: cardChild,
        height: 240,
        width: 450,
        margin: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
        decoration: BoxDecoration(
            color:colour,
            borderRadius:BorderRadius.circular(10)
        ),
      );

  }
}