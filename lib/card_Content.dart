import 'package:flutter/material.dart';

class CardContent extends StatelessWidget {
  CardContent({required this.CardIcon,required this.cardText});

  final IconData CardIcon;
  final Text cardText;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(CardIcon,
        size:80),
        SizedBox(
          height: 15,
        ),
        cardText,
      ],
    );
  }
}