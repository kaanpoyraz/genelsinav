import 'package:flutter/material.dart';
import 'dart:math';
import 'package:genel_sinav/ekranlar/kullaniciarayuzu.dart';

class Kampanyalar extends StatefulWidget {
  @override
  _KampanyalarState createState() => _KampanyalarState();
}

class _KampanyalarState extends State<Kampanyalar> {
  @override
  Widget build(BuildContext context) {
    String rastgeleSifre(int len) {
      var r = Random();
      const _chars =
          'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
      return List.generate(len, (index) => _chars[r.nextInt(_chars.length)])
          .join();
    }
    return MaterialApp(
      home: Builder(
        builder: (context) => Scaffold(
            body: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text('Anında %20 indirimden faydalanmak için', style: TextStyle(fontSize: 20, color: Colors.black),),
                  Text('garsona kodu gösteriniz.', style: TextStyle(fontSize: 20, color: Colors.black),),
                  SizedBox(height: 40,),
                  Text(rastgeleSifre(5), style: TextStyle(fontSize: 40, color: Colors.black)),
                  SizedBox(height: 40,),
                  Container(
                    width: 250,
                    height: 100,
                    child: Padding(
                        padding: const EdgeInsets.only(top: 15, bottom: 15),
                        child: TextButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: Colors.black)))),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => KullaniciArayuzu()));
                          },
                          child: Text(
                            'Ana Menüye Dön',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                  )


                ],
              ),
            )),
      ),
    );
  }
}
