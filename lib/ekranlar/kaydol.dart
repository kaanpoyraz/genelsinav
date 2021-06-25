import 'package:flutter/material.dart';
import 'package:genel_sinav/ekranlar/girisyap.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Kaydol extends StatefulWidget {
  @override
  _KaydolState createState() => _KaydolState();
}

class _KaydolState extends State<Kaydol> {
  TextEditingController email = new TextEditingController();
  TextEditingController parola = new TextEditingController();

  Future<void> kayitekle() async {
    await FirebaseAuth.instance
        .createUserWithEmailAndPassword(
            email: email.text, password: parola.text)
        .then((user) {
      FirebaseFirestore.instance.collection("LoginInfo").doc(email.text).set({
        "Email": email.text,
        "Parola": parola.text,
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Kayıt Ol',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          backgroundColor: Colors.grey,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 100,
                child: Center(
                  child: Text(
                    'Lütfen e-posta ve şifrenizi girerek kayıt olunuz.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 15, bottom: 15, left: 15, right: 15),
                child: TextFormField(
                  controller: email,
                  decoration: InputDecoration(
                      labelText: "E-mail Adresiniz",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.mail),
                      labelStyle: TextStyle(
                        color: Colors.black,
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: TextFormField(
                  controller: parola,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Parolanız",
                      prefixIcon: Icon(Icons.vpn_key),
                      labelStyle: TextStyle(
                        color: Colors.black,
                      )),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 150,
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15, bottom: 15),
                  child: TextButton(
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: Colors.black)))),
                      child: Text(
                        'Kaydol',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text("Başarılı!"),
                              content:
                                  Text("Kaydınız Başarıyla Tamamlanmıştır."),
                              actions: [
                                MaterialButton(
                                  child: Text("Giriş Yap"),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => GirisYap(
                                                Email: email.text,
                                                Parola: parola.text)));
                                  },
                                ),
                              ],
                            );
                          },
                        );
                        kayitekle();
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
