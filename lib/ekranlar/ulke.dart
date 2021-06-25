// @dart=2.7
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Ulke extends StatelessWidget {
  static const routeName = '/ulke';

  @override
  Widget build(BuildContext context) {
    final Map country = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text(country['name']),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: GridView(
          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          children: <Widget>[
            FlipCard(
              direction: FlipDirection.VERTICAL,
              front: UlkeCard(title: 'Başkent'),
              back: UlkeDetayCard(
                title: country['capital'],
                color: Colors.deepOrange,
              ),
            ),
            FlipCard(
              direction: FlipDirection.VERTICAL,
              front: UlkeCard(title: 'Nüfus'),
              back: UlkeDetayCard(
                title: country['population'].toString(),
                color: Colors.deepPurple,
              ),
            ),
            FlipCard(
              direction: FlipDirection.VERTICAL,
              front: UlkeCard(title: 'Bayrak'),
              back: Card(
                color: Colors.white,
                elevation: 10,
                child: Center(
                    child: SvgPicture.network(
                      country['flag'],
                      width: 200,
                    )),
              ),
            ),
            FlipCard(
              direction: FlipDirection.VERTICAL,
              front: UlkeCard(title: 'Para Birimi'),
              back: UlkeDetayCard(
                title: country['currencies'][0]['name'],
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UlkeDetayCard extends StatelessWidget {
  final String title;
  final MaterialColor color;
  UlkeDetayCard({this.title, this.color});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      elevation: 10,
      child: Center(
        child: Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}

class UlkeCard extends StatelessWidget {
  final String title;
  const UlkeCard({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Center(
          child: Text(
            title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )),
    );
  }
}
