import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _text = 'non premuto';
  void _onPressed() {
    setState(() {
      _text = 'premuto';
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(_text),
          ElevatedButton(
            onPressed: () => _onPressed(),
            child: Text('PRESS ME'),
          ),
        ],
      ),
    );
  }
}

class MyStfulWidget extends StatefulWidget {
  const MyStfulWidget({Key? key}) : super(key: key);

  @override
  _MyStfulWidgetState createState() => _MyStfulWidgetState();
}

class _MyStfulWidgetState extends State<MyStfulWidget> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


