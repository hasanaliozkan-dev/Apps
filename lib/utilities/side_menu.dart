import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20.0),
      child: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image(
              image: AssetImage(
                "images/logo1.png",
              ),
              height: 100.0,
            ),
            SizedBox(height: 30,),
            Text("Grade Calculator"),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text("Ayarlar"),
                    onTap: () {
                      //go to Setting menu
                    },
                  ),
                  Divider(
                    height: 4.0,
                    color: Colors.blueGrey[900],
                  ),
                  ListTile(
                    leading: Icon(Icons.share),
                    title: Text("Tavsiye Edin"),
                    onTap: () {
                      //go to Setting menu
                    },
                  ),
                  Divider(
                    height: 4.0,
                    color: Colors.blueGrey[900],
                  ),
                  ListTile(
                    leading: Icon(Icons.star_border),
                    title: Text("Puan verin"),
                    onTap: () {
                      //go to Setting menu
                    },
                  ),
                  Divider(
                    height: 4.0,
                    color: Colors.blueGrey[900],
                  ),
                  ListTile(
                    leading: Icon(Icons.chat_bubble_outline),
                    title: Text("Görüş bildir"),
                    onTap: () {
                      //go to Setting menu
                    },
                  ),
                  Divider(
                    height: 4.0,
                    color: Colors.blueGrey[900],
                  ),
                  ListTile(
                    leading: Icon(Icons.touch_app),
                    title: Text("Nasıl Kullanılır"),
                    onTap: () {
                      //go to Setting menu
                    },
                  ),
                  Divider(
                    height: 4.0,
                    color: Colors.blueGrey[900],
                  ),

                  Container(

                    child: ExpansionTile(
                        leading: Icon(Icons.info),
                        title: Text("Hakkımızda"),
                        children: [
                          ListTile(
                            contentPadding: EdgeInsets.only(left: 40.0),
                            leading: Icon(
                              Icons.widgets,
                            ),
                            title: Text("Uygulamalarımız"),
                            onTap: () {
                              // go to google play store
                            },
                          ),
                          Divider(
                            height: 4.0,
                            color: Colors.blueGrey[900],
                          ),
                          ListTile(
                            contentPadding: EdgeInsets.only(left: 40.0),
                            leading: Icon(
                              Icons.add_call,
                            ),
                            title: Text("İletişim"),
                            onTap: () {
                              // go to calling page
                            },
                          ),
                          Divider(
                            height: 4.0,
                            color: Colors.blueGrey[900],
                          ),
                        ]),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
