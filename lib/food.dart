import 'package:flutter/material.dart';
import 'package:flutter_application_6/styled_text.dart';

class  Food extends StatefulWidget {
 Food({super.key});

  @override
  State<Food> createState() => _FoodState();
}

class _FoodState extends State<Food> {
  int buttonpressed=1;

void increase ()
{  
 setState(() {
   buttonpressed=buttonpressed< 4? buttonpressed+1: 1;
 });
 

  }
  @override
  Widget build(BuildContext context) {
    return  Column(
    children: [
     Row(
      children: [
        StyledText("1. Maqloba"),
        SizedBox(width: 30,),
         for (int i=0;i<buttonpressed;i++)
       Padding( 
        padding: EdgeInsetsGeometry.all(2.0),
        child: Image.asset("assets/jordan.jpeg",width: 25,)
        ),
      Expanded(child: SizedBox(width: 30,)),
       StyledText("JORDAINIAN"), 
      
      ],
     ),
     Row(
      children: [
  
        StyledText("2. Yogurt Macaroni"),
        SizedBox(width: 20,),
        for (int i=0;i<buttonpressed;i++)
       Padding( 
        padding: EdgeInsetsGeometry.all(2.0),
        child: Image.asset("assets/syria.jpeg",width: 25,)
        ),
      Expanded(child: SizedBox(width: 30,)),
        StyledText("SYRIAN")
      ],),
    Row(
      children: [
        StyledText("3. Musakhan"),
        SizedBox(width: 30,),
         for (int i=0;i<buttonpressed;i++)
       Padding( 
        padding: EdgeInsetsGeometry.all(2.0),
        child: Image.asset("assets/palastine.jpeg",width: 25,)
        ),
      Expanded(child: SizedBox(width: 30,)),
        StyledText("PALASTINIAN")
      ],),
       Row(
      children: [
        StyledText("4. Ramen"),
        SizedBox(width: 30,),
       for (int i=0;i<buttonpressed;i++)
       Padding( 
        padding: EdgeInsetsGeometry.all(2.0),
        child: Image.asset("assets/japan.jpeg",width: 25,)
        ),
      Expanded(child: SizedBox(width: 30,)),
        StyledText("JAPANESE")
      ],),
     Row(
      children: [ 
        SizedBox(width: 30,),
    ElevatedButton(
     
         style: ElevatedButton.styleFrom(
        backgroundColor: Colors.red[400],
      ),
      onPressed:increase,
       child: StyledText("press me to add more flags ^^ !")),
      ]),
      
        ],

    );
  }
}