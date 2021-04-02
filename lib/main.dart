import 'package:flutter/material.dart';
import './Driver.dart';
import './about.dart';
import 'DaftarMakanan.dart';
import 'DaftarMinuman.dart';
import 'package:tugas1/ui/home.dart';

void main() {
  runApp(MyApp());
}

class  MyApp  extends  StatelessWidget  {
@override
//Isi  dari  widget
Widget  build(BuildContext  context)  {
return  MaterialApp(
title:  'First  App',
home:  MyHomePage(),
);
}
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Bali Resto",
                ),
              ]),
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.email_outlined,
                  size: 30,
                  color: Colors.white,
                ),
                onPressed: null),
          ],
        ),
        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                accountName: new Text(
                  "Gede Agus Mahendra",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                accountEmail: new Text("agusmahendra978@gmail.com"),
                currentAccountPicture: new CircleAvatar(
                  backgroundImage: new NetworkImage(
                      "https://scontent-sin6-2.xx.fbcdn.net/v/t1.0-9/93289217_690791238360814_4386360978833408000_o.jpg?_nc_cat=108&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=W6L-fyHdPPYAX8gAaQq&_nc_ht=scontent-sin6-2.xx&oh=1b145153fa5f6e7749905507e2de0f57&oe=60783B29"),
                ),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("gambar/bg.jpg"), fit: BoxFit.cover)),
              ),
              new ListTile(
                leading: new Icon(Icons.person),
                title: new Text("Account"),
                onTap: null,
              ),
              new ListTile(
                leading: new Icon(Icons.settings),
                title: new Text("Setting"),
                onTap: null,
              ),
              new ListTile(
                leading: new Icon(Icons.info_outline),
                title: new Text("About"),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return About();
                  }));
                },
              ),
              new ListTile(
                  leading: new Icon(Icons.help_outline),
                  title: new Text("Help"),
                  onTap: null),
              new ListTile(
                leading: new Icon(Icons.logout),
                title: new Text("Log Out"),
                onTap: null,
              ),
            ],
          ),
        ),
        body: GridView.count(
            crossAxisCount: 2,
            padding: EdgeInsets.all(40),
            crossAxisSpacing: 25,
            mainAxisSpacing: 40,
            children: <Widget>[
              new GestureDetector(
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext content) =>
                          DaftarMakanan()));
                },
                child: Button(
                  image: "gambar/Makanan.png",
                  nama: "Makanan",
                ),
              ),
              new GestureDetector(
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext content) =>
                          DaftarMinuman()));
                },
                child: Button(
                  image: "gambar/Minuman.png",
                  nama: "Minuman",
                ),
              ),
                            new GestureDetector(
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext content) =>
                          Driver()));
                },
                child: Button(
                  image: "gambar/Driver.png",
                  nama: "Driver",
                ),
              ),
              new GestureDetector(
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext content) => About()));
                },
                child: Button(
                  image: "gambar/About.png",
                  nama: "About",
                ),
              ),
              new GestureDetector(
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext content) => Home()));
                },
                child: Button(
                  image: "gambar/cart.png",
                  nama: "Tambah",
                ),
              )
            ]));
  }
}

class Button extends StatelessWidget {
  Button({Key key, this.image, this.nama}) : super(key: key);
  final String image;
  final String nama;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            this.image,
            width: 75,
          ),
          Text(
            this.nama,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          )
        ],
      ),
    );
  }
}
