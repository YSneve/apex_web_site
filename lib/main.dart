import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_site/legnds/legends.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'OnHover.dart';
import 'package:video_player/video_player.dart';
import 'package:url_launcher/url_launcher.dart';

double ImagesHieght = 550;
double ImagesWidth = 460;

double ImagesMarginLR = 20;
double ImagesMarginTB = 20;

var imagesPadding = const EdgeInsets.fromLTRB(0, 100, 0, 0);

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            primarySwatch: Colors.red,
            appBarTheme: const AppBarTheme(
                backgroundColor: Color.fromARGB(255, 177, 30, 30),
                // This will be applied to the "back" icon
                iconTheme: IconThemeData(color: Colors.red),
                // This will be applied to the action icon buttons that locates on the right side
                actionsIconTheme: IconThemeData(color: Colors.amber),
                centerTitle: false,
                elevation: 15,
                titleTextStyle: TextStyle(color: Colors.lightBlueAccent))),
        home: Scaffold(
            appBar: AppBar(
                leading: Image.asset('assets/images/apexlogo.png'),
                title: const Text(
                  'Apex Legends',
                  style: TextStyle(
                      fontSize: 45,
                      color: Color.fromARGB(255, 232, 232, 232),
                      fontFamily: "Roboto"),
                )),
            body: SingleChildScrollView(
                child: Column(children: [
              Stack(children: [
                Container(
                  height: 860,
                  width: 1920,
                  child: Image.asset(
                    "assets/images/apex_main_image.jpg",
                    fit: BoxFit.fill,
                  ),
                ),
                Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                          padding: EdgeInsets.fromLTRB(20, 150, 20, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              MyButton("ИГРАТЬ", 1),
                              MyButton("САЙТ", 0)
                            ],
                          ))
                    ]),
              ]),
              Stack(alignment: Alignment.topCenter, children: [
                Container(
                    height: 1400,
                    child: Image.asset(
                      'assets/images/background_grey.png',
                      fit: BoxFit.fill,
                    )),
                Column(children: [
                  Row(
                    children: [Column()],
                  ),
                  FirstRow(),
                  SecondRow()
                ])
              ])
            ]))));
  }
}

class FirstRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Mirage,
        Caustic,
        Octane,
      ],
    );
  }
}

class SecondRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [Pathfinder, Valkyrie, Revenant]);
  }
}

class MyButton extends StatelessWidget {
  var buttonText, buttonNumber;
  MyButton(String text, num) {
    buttonText = text;
    buttonNumber = num;
  }
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: Color.fromARGB(50, 160, 160, 160),
        shadowColor: Color.fromARGB(255, 200, 200, 200),
        textStyle: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontFamily: "Roboto"),
        minimumSize: Size(150, 48),
        // NEW
      ),
      onPressed: () {
        if (buttonNumber == 1) {
          launchUrlString(
              "https://www.ea.com/ru-ru/games/apex-legends/play-now-for-free");
        } else {
          launchUrlString("https://www.ea.com/ru-ru/games/apex-legends/about");
        }
        // Respond to button press
      },
      child: Text(buttonText),
    );
  }
}
