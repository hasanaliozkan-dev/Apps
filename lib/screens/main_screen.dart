import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.black12,
          image: DecorationImage(
            image: AssetImage(
              "images/logo1.png",
            ),
            fit: BoxFit.contain,
          )),
      child: buildCalculatingToolsList(context),
    );
  }

  Widget buildCalculatingToolsList(BuildContext context) {
    return Container(
      child: cardBuilder(context),
    );
  }
}

Widget cardBuilder(BuildContext context) {
  return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20.0),
      crossAxisSpacing: 10.0,
      crossAxisCount: 2,
      children: [
        GridTile(
          child: InkWell(
            child: Card(
              color: Colors.amberAccent.withOpacity(0.5),
              child: ListView(
                children: [
                  Image(
                    image: AssetImage("images/ders_ortalama.png"),
                    height: 90,
                    width: 90,
                  ),
                  Divider(
                    height: 10.0,
                    color: Colors.black.withOpacity(0.7),
                    thickness: 1.5,
                  ),
                  Text(
                    "       DERS     \n ORTALAMA",
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/ders');
            },
          ),
        ),
        GridTile(
          child: InkWell(
            child: Card(
              child: ListView(
                children: [
                  Image(image: AssetImage("images/2.png"),height: 90,width: 90,),
                  Divider(
                    height: 10.0,
                    color: Colors.black.withOpacity(0.7),
                    thickness: 1.5,
                  ),
                  Text("       DÖNEM\n    ORTALAMA",style: TextStyle(fontSize: 26.0,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),
                  )]),
              color: Colors.amberAccent.withOpacity(0.6),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/donem');
            },
          ),
        ),
        GridTile(
          child: InkWell(
            child: Card(
              color: Colors.amberAccent.withOpacity(0.6),
              child: ListView(
                children: [
                  Image(
                    image: AssetImage("images/fnl_but.png"),
                    height: 90,
                    width: 90,
                  ),
                  Divider(
                    height: 10.0,
                    color: Colors.black.withOpacity(0.7),
                    thickness: 1.5,
                  ),
                  Text(
                    "FİNAL BÜT KAÇ\n   ALMALIYIM?",
                    style: TextStyle(fontSize: 24.0,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/fnlbut');
            },
          ),
        ),
        GridTile(
          child: InkWell(
            child: Card(
              child: ListView(
                children: [
                  Image(
                    image: AssetImage("images/3.png"),
                    height: 90.0,
                    width: 90.0,
                  ),
                  Divider(
                    height: 10.0,
                    color: Colors.black.withOpacity(0.7),
                    thickness: 1.5,
                  ),
                  Text("     GENEL\n ORTALAMA",style:(TextStyle(fontWeight: FontWeight.bold,fontSize: 30,fontStyle: FontStyle.italic)),),
                ],
              ),
              color: Colors.amberAccent.withOpacity(0.6),
            ),
            onTap: () {
              Navigator.pushNamed(context, "/genel");
            },
          ),
        ),
      ]);
}
