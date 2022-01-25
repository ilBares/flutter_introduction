import 'package:flutter/material.dart';

void main() => runApp(CarsApp());

class CarsApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cars App',
      home: Scaffold(
        body: SafeArea(
          child: ListView.builder(
            // 15 items, per ogni item invoca itemBuilder
            itemCount: 15,
            itemBuilder: (context, index) {
              return _buildItem(index);
            }
          ),
        ),
      ),
    );
  }

  Widget _buildItem(index) {
    return ListTile(
      leading: Icon(Icons.book),
      title: Text(
        'Title $index',
        style: TextStyle(
          fontSize: 30,
        ),
      ),
      subtitle: Text(
        'Subtitle $index',
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}
























/*
import 'package:flutter/material.dart';

void main() => runApp(IntroductionApp());

class IntroductionApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title',
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
        body: MyListView(),
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
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 10),
        child: Text(text),
      ),
    );
  }

}
 */