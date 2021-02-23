
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DersOrtalama extends StatefulWidget {


  @override
  _DersOrtalamaState createState() => _DersOrtalamaState();
}

class _DersOrtalamaState extends State<DersOrtalama> {
  int vz,vzEtki,fnl,fnlEtki;
  TextEditingController textEditingController = TextEditingController();
  TextEditingController textEditingController1 = TextEditingController();
  TextEditingController textEditingController2 = TextEditingController();
  TextEditingController textEditingController3 = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Ders Ortalama"),
          centerTitle: true,
          leading: BackButton(
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: buildCalculatePage(vz, vzEtki, fnl, fnlEtki,),
      ),
    );
  }

  Widget buildCalculatePage(int vz, int vzEtki, int fnl, int fnlEtki) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.black12,
          image: DecorationImage(
            image: AssetImage(

              "images/ders_ortalama.png", // burdaki resim kartın üzerindekinin transı olacak.
            ),
            fit: BoxFit.contain,
          )),
      child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20.0),
          crossAxisSpacing: 10.0,
          crossAxisCount: 2,
          childAspectRatio: 9 / 2.9,
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: Colors.white,
              child: TextField(
                controller: textEditingController,
                textAlign: TextAlign.center,
                onChanged: (input) =>vz = int.tryParse(input),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  hintText: "Vize Notunuz",
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: Colors.white,
              child: TextField(
                controller: textEditingController1,
                textAlign: TextAlign.center,
                onChanged: (input) => vzEtki = int.tryParse(input),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  hintText: "Vize Etkisi(%)",
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: Colors.white,
              child: TextField(
                controller: textEditingController2,
                textAlign: TextAlign.center,
                onChanged: (input) => fnl = int.tryParse(input),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  hintText: "Final Notunuz",
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: Colors.white,
              child: TextField(

                controller: textEditingController3,
                textAlign: TextAlign.center,
                onChanged: (input) => fnlEtki = int.tryParse(input),
                keyboardType: TextInputType.number,

                decoration: InputDecoration(
                  hintText: "Final Etkisi (%)",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                ),
              ),
            ),
            Center(
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                child: Icon(Icons.info_outline),
                onPressed: (){
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => SimpleDialog(
                      title: Text("Nasıl Hesaplanır?"),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      children: [
                        Container(
                          padding: EdgeInsets.all(30.0),
                          child: Text("foreıkljgmpolşvsdjhngıkolsjnmdfkglş"
                              "ggjıodskfjgmpşlsdfkgsd"
                              "fgdpofşlgkmlsşvdfg"
                              "gkdslşfgmşpldfg"
                              "gkdvlfşgmşlf"),
                        ),
                      ],
                    ),

                  );
                },
              ),
            ),
            Center(
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                child: Text("Hesapla"),
                onPressed: () {
                  showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                            title: const Text('ORTALAMANIZ'),
                            content: Text("Tebrikler "+
                                calculateAverage(vz, vzEtki, fnl, fnlEtki)
                                     + "!!!"),
                            actions: [
                              FlatButton(
                                child: Text("Geri"),
                                onPressed: () => Navigator.pop(context, "Geri"),
                              )
                            ],
                          ));
                  this.textEditingController.clear();
                  this.textEditingController1.clear();
                  this.textEditingController2.clear();
                  this.textEditingController3.clear();
                },
              ),
            ),
          ]),
    );
  }

  String calculateAverage(int vz, int vzEtki, int fnl, int fnlEtki) {
    double result;
    if(fnlEtki+vzEtki == 100){
      result = vz * (vzEtki / 100) + fnl * (fnlEtki / 100);
    }else{
       result = -1;
    }
    if(result == -1){
      return "Lütfen oranları doğru giriniz ";
    }
    return result.toString();

  }
}
