
import 'package:flutter/material.dart';
import 'package:grade_calculator/screens/donem_ortalama.dart';
import 'package:grade_calculator/screens/ders_ortalama.dart';
import 'package:grade_calculator/screens/final_but.dart';
import 'package:grade_calculator/screens/genel_not.dart';
import 'package:grade_calculator/utilities/side_menu.dart';

import 'screens/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: SideMenu(),
        appBar: AppBar(
          title: Text("GRADE CALCULATOR"),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(Icons.star),
              onPressed: () {
                // go to rate page
              },
            ),
            /*IconButton(
              icon: Icon(Icons.share),
              onPressed: () {
                //goto share page
              },
            ),*/
          ],
        ),
        body: MainScreen(),
      ),
      initialRoute: '/',
      routes: {

        '/ders': (context) => DersOrtalama(),
        '/fnlbut': (context) => FinalBut(),
        '/donem' : (context) => DonemOrtalama(),
        '/genel' : (context) => GenelNot(),
      },
    );
  }
}


