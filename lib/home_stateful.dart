import 'package:flutter/material.dart';

// devi fare uno stateful widget

class HomeStateful extends StatefulWidget {
  const HomeStateful({Key? key}) : super(key: key);

  @override
  _HomeStatefulState createState() => _HomeStatefulState();
}

class _HomeStatefulState extends State<HomeStateful> {
  String _text = "Cliccami";
  bool _onClick = false;

  void setClick(click){
    this._onClick=click;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              child: ElevatedButton(onPressed: (){
                setState(() {

                  _text = "Bravo";
                });
              },
                child: new Text(_text),
              ),
              alignment: Alignment.center,
            )
          ],
        ),
      );
  }
}
