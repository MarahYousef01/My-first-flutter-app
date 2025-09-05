import 'package:flutter/material.dart';
import 'package:flutter_application_6/styled_text.dart';

class Food extends StatelessWidget {
  const Food({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
    children: [
     Row(
      children: [
        StyledText("1. Maqloba"),
      Expanded(child: SizedBox(width: 30,)),
       StyledText("JORDAINIAN")
      ],
     ),
     Row(
      children: [
        StyledText("2. Yogurt Macaroni"),
      Expanded(child: SizedBox(width: 30,)),
        StyledText("SYRIAN")
      ],),
    Row(
      children: [
        StyledText("3. Musakhan"),
      Expanded(child: SizedBox(width: 30,)),
        StyledText("PALASTINIAN")
      ],),
       Row(
      children: [
        StyledText("4. Ramen"),
      Expanded(child: SizedBox(width: 30,)),
        StyledText("JAPANESE")
      ],),
      ],

    );
  }
}