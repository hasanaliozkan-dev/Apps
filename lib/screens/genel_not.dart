import 'package:flutter/material.dart';

class GenelNot extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _GenelNotState();
  }
}

class _GenelNotState extends State {
  @override
  List<Row> liste = new List();
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
          ),
          title: Text("Genel Ortalama Hesaplama"),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              liste.add(Row(
                children: [
                  TextField(),
                  TextField(),
                ],
              ));
            }),
        body: buildCalculatePage(context),
      ),
    );
  }

  Widget buildCalculatePage(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/3.png"),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
