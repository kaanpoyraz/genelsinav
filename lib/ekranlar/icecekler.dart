import 'package:flutter/material.dart';
import 'package:genel_sinav/ekranlar/kullaniciarayuzu.dart';
import 'package:genel_sinav/modeller/liste.dart';

class Icecekler extends StatefulWidget {
  @override
  _IceceklerState createState() => _IceceklerState();
}

class _IceceklerState extends State<Icecekler> {
  List<liste> drinkmenu = [
    liste(fotograf: 'kirmizisarap.jpg', isim: 'Kırmızı Şarap', fiyat: '50TL'),
    liste(
        fotograf: 'beyazsarap.jpg', isim: 'Beyaz Şarap', fiyat: '50TL'),
    liste(
        fotograf: 'kola.jpg', isim: 'Kola', fiyat: '20TL'),
    liste(fotograf: 'fanta.jpg', isim: 'Fanta', fiyat: '20TL'),
    liste(
        fotograf: 'ayran.jpg', isim: 'Ayran', fiyat: '15TL'),
    liste(
        fotograf: 'soda.jpg', isim: 'Soda', fiyat: '15TL'),
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                child: Container(
                  width: screenWidth,
                  height: 50,
                  child: Center(
                    child: Text(
                      'İçecekler',
                      style: TextStyle(fontSize: 30, color: Colors.black),
                    ),
                  ),
                ),
              ),
              ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: drinkmenu.length,
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
                                'assets/images/${drinkmenu[index].fotograf}'),
                          ),
                          title: Text('${drinkmenu[index].isim}'),
                          subtitle: Text('${drinkmenu[index].fiyat}'),
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

