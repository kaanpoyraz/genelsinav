import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:genel_sinav/ekranlar/basarilicikis.dart';
import 'package:genel_sinav/ekranlar/eglence.dart';
import 'package:genel_sinav/ekranlar/grafik-animasyon.dart';
import 'package:genel_sinav/ekranlar/hakkinda.dart';
import 'package:genel_sinav/ekranlar/icecekler.dart';
import 'package:genel_sinav/ekranlar/kampanyalar.dart';
import 'yiyecekler.dart';


class KullaniciArayuzu extends StatelessWidget {
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
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Yiyecekler()));
                                    },
                                    child: Text(
                                      'Y??YECEKLER',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )),
                            ),
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
                                              builder: (context) => Icecekler()));
                                    },
                                    child: Text(
                                      '????ECEKLER',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )),
                            ),
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
                                                  Kampanyalar()));
                                    },
                                    child: Text(
                                      'KAMPANYALAR',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )),
                            ), // Kampanyalar
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
                                              builder: (context) => BarChartSample1()));
                                    },
                                    child: Opacity(
                                      opacity: 1.0,
                                      child: Text(
                                        'HAFTALIK SATI??',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  )),
                            ), //Animations
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
                                              builder: (context) => Eglence()));
                                    },
                                    child: Text(
                                      'E??LENCE',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )),
                            ), //E??lence
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
                                              builder: (context) => Hakkinda()));
                                    },
                                    child: Text(
                                      'HAKKIMIZDA',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )),
                            ), // Hakk??m??zda
                            Container(
                              width: 250,
                              height: 100,
                              child: Padding(
                                  padding:
                                  const EdgeInsets.only(top: 15, bottom: 15),
                                  child: ElevatedButton(
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
                                              builder: (context) => BasariliCikis()));
                                    },
                                    child: Text(
                                      '??IKI?? YAP',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )),
                            ), //????k???? Yap
                            Divider(
                              height: 50,
                            ),
                            Text(
                              'Kaan-Et?? , T??m haklar?? sakl??d??r.',
                              style: TextStyle(fontSize: 14, color: Colors.black),
                            )
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
