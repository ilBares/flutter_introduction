import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color coloreSfondo = const Color(0xffffffff);
  @override
  Widget build(BuildContext context){
    return Container(
      color: coloreSfondo,
        child: Align(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: (){
                setState(() {
                  var caso = Random();
                  coloreSfondo = cambiaColore(caso);
                });
              },
                child: const Text("Cambia colore"),
              ),
            ],
          ),
          alignment: Alignment.center,
        ),
    );
  }

  Color cambiaColore(caso){
    Color c = Color((caso.nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
    return c;
  }
}
