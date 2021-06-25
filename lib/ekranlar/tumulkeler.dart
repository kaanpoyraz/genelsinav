import 'package:genel_sinav/ekranlar/eglence.dart';
import 'package:genel_sinav/ekranlar/ulke.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class TumUlkeler extends StatefulWidget {
  @override
  _TumUlkelerState createState() => _TumUlkelerState();
}

class _TumUlkelerState extends State<TumUlkeler> {
  List Ulkeler = [];
  List filtreUlkeler = [];
  bool x = false;

  getUlke() async {
    var response = await Dio().get('https://restcountries.eu/rest/v2/all');
    return response.data;
  }

  @override
  void initState() {
    getUlke().then((data) {
      setState(() {
        Ulkeler = filtreUlkeler = data;
      });
    });
    super.initState();
  }

  void _filterCountries(value) {
    setState(() {
      filtreUlkeler = Ulkeler
          .where((country) =>
          country['name'].toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: !x
              ? Text('Tüm Ülkeler')
              : TextField(
            onChanged: (value) {
              _filterCountries(value);
            },
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                hintText: "Arama",
                hintStyle: TextStyle(color: Colors.white)),
          ),
          leading: IconButton(icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Eglence()));

          }),

          actions: <Widget>[
            x
                ? IconButton(
              icon: Icon(Icons.cancel),
              onPressed: () {
                setState(() {
                  this.x = false;
                  filtreUlkeler = Ulkeler;
                });
              },
            )
                : IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                setState(() {
                  this.x = true;
                });
              },
            )

          ],
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: filtreUlkeler.length > 0
              ? ListView.builder(
              itemCount: filtreUlkeler.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(Ulke.routeName,
                        arguments: filtreUlkeler[index]);
                  },
                  child: Card(
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 8),
                      child: Text(
                        filtreUlkeler[index]['name'],
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                );
              })
              : Center(
            child: CircularProgressIndicator(),
          ),
        ),
    );
  }
}