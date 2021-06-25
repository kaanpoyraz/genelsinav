import 'package:flutter/material.dart';
import 'package:genel_sinav/ekranlar/eglence.dart';
import 'package:genel_sinav/ekranlar/gesturekullandiniz.dart';


class Gestures extends StatefulWidget {
  @override
  _GesturesState createState() => _GesturesState();
}

class _GesturesState extends State<Gestures> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              new GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => GestureKullandiniz())),
                child: Padding(
                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                  child: Container(
                    width: 250,
                    height: 70,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 5),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Padding(
                        padding: const EdgeInsets.only(top: 15, bottom: 15),
                        child: Center(
                            child: Text(
                          "Tek Tıklama",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ))),
                  ),
                ),
              ),
              new GestureDetector(
                onDoubleTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => GestureKullandiniz())),
                child: Padding(
                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                  child: Container(
                    width: 250,
                    height: 70,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 5),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Padding(
                        padding: const EdgeInsets.only(top: 15, bottom: 15),
                        child: Center(
                            child: Text(
                              "Çift Tıklama",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ))),
                  ),
                ),
              ),
              new GestureDetector(
                onLongPress: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => GestureKullandiniz())),
                child: Padding(
                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                  child: Container(
                    width: 250,
                    height: 70,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 5),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Padding(
                        padding: const EdgeInsets.only(top: 15, bottom: 15),
                        child: Center(
                            child: Text(
                              "Basılı Tutma",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ))),
                  ),
                ),
              ),
              new GestureDetector(
                onTapUp: (x) => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => GestureKullandiniz())),
                child: Padding(
                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                  child: Container(
                    width: 250,
                    height: 70,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 5),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Padding(
                        padding: const EdgeInsets.only(top: 15, bottom: 15),
                        child: Center(
                            child: Text(
                              "Tıklama Bitince",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ))),
                  ),
                ),
              ),
              new GestureDetector(
                onHorizontalDragEnd: (DragEndDetails details) => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => GestureKullandiniz())),
                child: Padding(
                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                  child: Container(
                    width: 250,
                    height: 70,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 5),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Padding(
                        padding: const EdgeInsets.only(top: 15, bottom: 15),
                        child: Center(
                            child: Text(
                              "Yana Kaydırma",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ))),
                  ),
                ),
              ),
              new GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Eglence())),
                child: Padding(
                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                  child: Container(
                    width: 250,
                    height: 70,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 5),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Padding(
                        padding: const EdgeInsets.only(top: 15, bottom: 15),
                        child: Center(
                            child: Text(
                              "Geri Dön",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ))),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
