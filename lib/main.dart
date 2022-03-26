import 'package:flutter/material.dart';

import 'home_stateful.dart';

void main() => runApp(IntroductionApp());

class IntroductionApp extends StatelessWidget {
  Color c = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title',
      home: Scaffold(
        backgroundColor: c,
        appBar: AppBar(
          backgroundColor: Colors.white38,
          title: Align(
            alignment: Alignment.centerRight,
            child: Text(
              'TITLE',
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        // a body potremmo anche assegnare MyListView()
        body: HomeStateful(),

      ),
    );
  }
}

class MyBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Text(
              'Sono nel Body',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Sono il secondo Text',
              style: TextStyle(
                color: Colors.black38,
                fontSize: 20,
                fontStyle: FontStyle.italic,
              ),
            ),
            Text(
              'Sono il terzo Text',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Sono nel Body',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Sono il secondo Text',
              style: TextStyle(
                color: Colors.black38,
                fontSize: 20,
                fontStyle: FontStyle.italic,
              ),
            ),
            Text(
              'Sono il terzo Text',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ],
    );
  }

}

class MyListView extends StatelessWidget {
  final _itemCount = 15;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _itemCount,
      itemBuilder: (context, int index) {
        return buildCard('Text n. $index');
      }
    );
  }

  Widget buildCard(String text) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Container(
        child: Row(
          children: [
            Expanded(
              child:Image.asset("assets/minny.jpeg"),
              flex: 3,
            ),
            Expanded(
              child: Center(child: Text(text)),
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }

}