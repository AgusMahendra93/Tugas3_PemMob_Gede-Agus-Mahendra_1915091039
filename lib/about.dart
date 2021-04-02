import 'package:flutter/material.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Tentang Aplikasi"),
        ),
        body: Container(
          width: double.infinity,
          child: new ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
                child: Center(
                  child: Text(
                    "Deskripsi Aplikasi",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.green,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Center(
                child : Text("Bali Resto",)
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 30),
                  child: Column(
                    children: <Widget>[
                      Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            '        Aplikasi Bali Resto adalah aplikasi yang memungkinkan pengguna untuk membeli makanan khas bali. Masing-masing pengguna dapat membeli makanan yang disediakan.',
                            style: TextStyle(fontSize: 15),
                            textAlign: TextAlign.justify,
                          
                          )),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Center(
                  child: Text(
                    "Pengembang",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.green),
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://scontent-sin6-2.xx.fbcdn.net/v/t1.0-9/93289217_690791238360814_4386360978833408000_o.jpg?_nc_cat=108&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=W6L-fyHdPPYAX8gAaQq&_nc_ht=scontent-sin6-2.xx&oh=1b145153fa5f6e7749905507e2de0f57&oe=60783B29",
                        ),
                        radius: 90,
                      ),
                      Text(
                        "Nama : Gede Agus Mahendra",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "NIM : 1915091039",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Program Studi Sistem Informasi ",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ))
            ],
          ),
        ));
  }
}
