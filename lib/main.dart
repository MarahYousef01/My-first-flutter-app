
import 'package:flutter/material.dart';
import 'package:flutter_application_6/food.dart';
import 'package:flutter_application_6/styled_text.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'indieflower', // global font
        ),
        home: Homee(),
  
));

class Homee extends StatelessWidget {
  Homee({super.key});
  final Uri _url = Uri.parse('https://www.linkedin.com/in/marahyousef'); 

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $_url');
    }
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
  appBar: AppBar(
    backgroundColor: Colors.brown,
    centerTitle: true,
    title: StyledText("MY FAV FOOD.. "),
  ),
  body: Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      Container(
        color: Colors.brown[400],
        padding: EdgeInsets.all(20),
        child: StyledText("list of my fav dishes around the world ! : "),
      ),
      Container(
        color: Colors.brown[200],
        padding: EdgeInsets.all(20),
        child: Food(),
      ),

      // 🖼️ Image with button on top
      Expanded(
        child: Stack(
          children: [
            Image.asset(
              "assets/ramen.jpeg",
              fit: BoxFit.fitWidth,
              width: double.infinity,
            ),
            Positioned(
             bottom: 20.0,
             right: 40,
              child: ElevatedButton(
              style: ElevatedButton.styleFrom(
               backgroundColor: Colors.brown[300],  ),
            onPressed:_launchUrl,
               child: StyledText("CLICK HERE TO KNOW ME MORE !"),
        )
            ),
             Positioned(
              top: 50,
              right : 30,
              child: Transform.rotate(
                angle: 0.1, 
                child: Icon(
                  Icons.favorite,
                  size: 100,
                  color: Colors.brown[300],
                ),
              ),
            ),
        Positioned(
              top: 250,
              right : 30,
              child: Transform.rotate(
                angle: 0.1, 
                child: Icon(
                  Icons.favorite,
                  size: 100,
                  color: Colors.brown[100],
                ),
              ),
            ),
         Positioned(
              top: 150,
              left : 50,
              child: Transform.rotate(
                angle: -0.3, 
                child: Icon(
                  Icons.favorite,
                  size: 100,
                  color: Colors.brown[200],
                ),
              ),
            ), 
             Positioned(
              top: 300,
              left : 90,
              child: Transform.rotate(
                angle: -0.3, 
                child: Icon(
                  Icons.favorite,
                  size: 100,
                  color: Colors.brown[200],
                ),
              ),
            ),],
        ),
      ),
    ],
  ),
);
  }}