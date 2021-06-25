import 'package:flutter/material.dart';
import 'package:genel_sinav/ekranlar/gestures.dart';
import 'package:genel_sinav/ekranlar/grafik-animasyon.dart';
import 'package:genel_sinav/ekranlar/kullaniciarayuzu.dart';
import 'package:genel_sinav/ekranlar/ulke.dart';
import 'package:genel_sinav/ekranlar/tumulkeler.dart';

class Eglence extends StatefulWidget {
  @override
  _EglenceState createState() => _EglenceState();
}

class _EglenceState extends State<Eglence> {


  void ulkeapi() {
    runApp(new MaterialApp(
      home: new TumUlkeler(),
      routes: {
        Ulke.routeName: (ctx) => Ulke()
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) => Scaffold(
          body: Container(
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      width: 250,
                      height: 100,
                      child: Padding(
                          padding:
                          const EdgeInsets.only(top: 15, bottom: 15),
                          child: TextButton(
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(18.0),
                                        side: BorderSide(
                                            color: Colors.black)))),
                            onPressed: () {
                              ulkeapi();
                            },
                            child: Text(
                              'API',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                    ), //Api
                    Container(
                      width: 250,
                      height: 100,
                      child: Padding(
                          padding:
                          const EdgeInsets.only(top: 15, bottom: 15),
                          child: TextButton(
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(18.0),
                                        side: BorderSide(
                                            color: Colors.black)))),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          Gestures()));
                            },
                            child: Text(
                              'GESTURES',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                    ), //Gestures

                    Container(
                      width: 250,
                      height: 100,
                      child: Padding(
                          padding:
                          const EdgeInsets.only(top: 15, bottom: 15),
                          child: TextButton(
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(18.0),
                                        side: BorderSide(
                                            color: Colors.black)))),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => KullaniciArayuzu()));
                            },
                            child: Text(
                              'GERİ DÖN',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                    ), //Geri Dön
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
