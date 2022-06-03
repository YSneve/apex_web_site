import 'package:flutter/material.dart';
import 'package:flutter_site/legnds/legends.dart';
import 'OnHover.dart';
import 'package:video_player/video_player.dart';

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
            primarySwatch: Colors.pink,
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
                Image.asset(
                  'assets/images/background_grey.png',
                ),
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
      children: [Mirage, Caustic, Octane],
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
