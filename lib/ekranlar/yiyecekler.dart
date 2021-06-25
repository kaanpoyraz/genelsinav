import 'package:flutter/material.dart';
import 'package:genel_sinav/ekranlar/kullaniciarayuzu.dart';
import 'package:genel_sinav/modeller/liste.dart';

class Yiyecekler extends StatefulWidget {
  @override
  _YiyeceklerState createState() => _YiyeceklerState();
}

class _YiyeceklerState extends State<Yiyecekler> {
  List<liste> foodmenu = [
    liste(fotograf: 'danalokum.jpg', isim: 'Dana Lokum', fiyat: '200TL'),
    liste(
        fotograf: 'kaanetburger.jpg', isim: 'Kaan-Et Burger', fiyat: '75TL'),
    liste(
        fotograf: 'kasapkofte.jpg', isim: 'Kasap Köfte', fiyat: '100TL'),
    liste(fotograf: 'kuzukafes.jpg', isim: 'Kuzu Kafes', fiyat: '500TL'),
    liste(
        fotograf: 'sezarsalata.jpg', isim: 'Sezar Salata', fiyat: '50TL'),
    liste(
        fotograf: 'kuzupirzola.jpg', isim: 'Kuzu Pirzola', fiyat: '150TL'),
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                child: Container(
                  width: screenWidth,
                  height: 50,
                  child: Center(
                    child: Text(
                      'Yiyecekler',
                      style: TextStyle(fontSize: 30, color: Colors.black),
                    ),
                  ),
                ),
              ),
              ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: foodmenu.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 2.0, horizontal: 4.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.grey,
                            backgroundImage: AssetImage(
                                'assets/images/${foodmenu[index].fotograf}'),
                          ),
                          title: Text('${foodmenu[index].isim}'),
                          subtitle: Text('${foodmenu[index].fiyat}'),
                        ),
                      ),
                    );
                  }),
              Container(
                width: 150,
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
        ));
  }
}
