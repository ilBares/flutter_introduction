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
        body: Row(
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
        ),
      ),
    );
  }
}