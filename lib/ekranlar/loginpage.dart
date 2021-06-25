// @dart=2.7
import 'package:genel_sinav/ekranlar/kaydol.dart';
import 'package:flutter/material.dart';
import 'package:genel_sinav/ekranlar/girisyap.dart';

class LoginPage extends StatefulWidget {
  String Email;
  String Parola;
  LoginPage({this.Email, this.Parola});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Builder(
          builder: (context) => Scaffold(
            backgroundColor: Color(0xFFFFFFFF),
            body: SafeArea(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 150.0,
                      backgroundColor: Colors.yellow,
                      backgroundImage: AssetImage('assets/images/logo.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Divider(
                        height: 5,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 150,
                      height: 100,
                      child: Padding(
                          padding: const EdgeInsets.only(top: 20, bottom: 20),
                          child: TextButton(
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(18.0),
                                        side: BorderSide(color: Colors.black)))),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>GirisYap()));
                            },
                            child: Text(
                              'Giriş Yap',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),

                    ),
                    Container(
                      width: 150,
                      height: 100,
                      child: Padding(
                          padding: const EdgeInsets.only(top: 20, bottom: 20),
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
                                      builder: (context) => Kaydol()));
                            },
                            child: Text(
                              'Kaydol',
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
        ));
  }
}
