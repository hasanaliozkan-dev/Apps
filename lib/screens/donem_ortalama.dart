
import 'package:flutter/material.dart';
import 'package:grade_calculator/utilities/ders.dart';

class DonemOrtalama extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DonemOrtalama();
  }
}

class _DonemOrtalama extends State {
  List<dynamic> liste = new List();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
          ),
          title: Text("Dönem Ortalama"),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) => buildInputPage(context),
              );
            }),
        body: buildCalculatePage(context),
      ),
    );
  }

  buildCalculatePage(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black12,
        image: DecorationImage(
          image: AssetImage("images/2.png"),
          fit: BoxFit.contain,
        ),
      ),
      child: ListView.builder(
          itemCount: liste.length,

          itemBuilder: (BuildContext context, int index) {
             print(liste[index].dersAdi);
             return ListTile(
               title:  Text(liste[index].dersAdi),

             );

          }),
    );
  }

  Widget buildInputPage(BuildContext context) {
    String dersAdi;
    int dersKredisi;
    String harfNotu;
    return SimpleDialog(
      children: [
        TextField(
          
          textAlign: TextAlign.center,
          onChanged: (input) => dersAdi = input,
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0)),
            hintText: "Ders Adı ",
          ),
        ), TextField(
          
          textAlign: TextAlign.center,
          onChanged: (input) => dersKredisi = int.tryParse(input),
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0)),
            hintText: "Ders Kredisi",
          ),
        ),
        TextField(
          
          textAlign: TextAlign.center,
          onChanged: (input) =>  harfNotu = input,

          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0)),
            hintText: "Harf Notunuz",
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(

            icon: Icon(Icons.add),
            onPressed: () {
              Ders temp = new Ders(dersAdi, dersKredisi, harfNotu);
              liste.add(temp);
              Navigator.pop(context);

            },
          ),
        ),
      ],
    );
  }
}
