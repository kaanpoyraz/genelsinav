// @dart=2.7
import 'package:flutter/material.dart';
import 'package:genel_sinav/ekranlar/basariligiris.dart';
import 'package:firebase_auth/firebase_auth.dart';

class GirisYap extends StatefulWidget {

  String Email;
  String Parola;
  GirisYap({this.Email,this.Parola});

  @override
  _GirisYapState createState() => _GirisYapState();
}

class _GirisYapState extends State<GirisYap> {

  girisYap(){
    FirebaseAuth.instance
        .signInWithEmailAndPassword(email: widget.Email, password: widget.Parola)
        .then((user) =>
        Navigator.push(context, MaterialPageRoute(builder: (context)=>BasariliGiris())));
  }
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Giriş Yap',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          backgroundColor: Colors.grey,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(height: 100,
                child: Center(
                  child: Text('Lütfen kayıtlı olduğunuz bilgilerinizle giriş yapınız.', style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,

                  ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 15,bottom: 15,left: 15,right: 15),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "E-mail Adresiniz",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.mail),
                      labelStyle: TextStyle(
                        color: Colors.black,
                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Parolanız",
                      prefixIcon: Icon(Icons.vpn_key),
                      labelStyle: TextStyle(
                        color: Colors.black,
                      )
                  ),
                ),
              ),
              SizedBox(height: 20,),
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
                      onPressed: girisYap,
                      child: Text(
                        'Giriş Yap',
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
    );
  }
}
