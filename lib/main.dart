// required to use "standard" Widget (MaterialApp, Scaffold, Text, ...)
import 'package:flutter/material.dart';
import 'package:ripasso/home_stful.dart';

// required to launch the App
void main() => runApp(IntroductionApp());

// Widget that contains every widget of My App
class IntroductionApp extends StatelessWidget {

  // required to "build" my application - entry point for composing together
  // other widgets to make a new widget
  @override
  Widget build(BuildContext context) {

    // predefined Widget in Flutter
    return MaterialApp(
      title: 'Title',

      // Scaffold provides the high-leve structure for a screen (such as colors)
      home: Scaffold(
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
        //
        body: Home(),
      ),
    );
  }
}

// custom Widget not used - usable instead of "MyListView()" - row 34
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

// custom Widget used as body of Scaffold - row 34
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
        padding: EdgeInsets.all(2.0),
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