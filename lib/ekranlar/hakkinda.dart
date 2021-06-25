import 'package:flutter/material.dart';
import 'package:genel_sinav/ekranlar/kullaniciarayuzu.dart';

class Hakkinda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) => Scaffold(
          body: Container(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Card(
                    margin: EdgeInsets.symmetric(
                        horizontal: 25
                    ),
                    color: Colors.grey,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        'Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yürütülen "3301456" kodlu "Mobil Programlama" dersi \n kapsamında "193301011" numaralı "Kaan Poyraz" tarafından "25.06.2021" günü yapılmıştır.',
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),

                    ),

                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    width: 150,
                    height: 100,
                    child: Padding(
                        padding: const EdgeInsets.only(top: 15, bottom: 15),
                        child: OutlinedButton(
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
                            'Geri Dön',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
