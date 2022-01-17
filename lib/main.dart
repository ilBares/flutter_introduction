import 'package:flutter/material.dart';

void main() => runApp(IntroductionApp());

class IntroductionApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "IntroductionApp",
      home: Scaffold(
        appBar: AppBar(
          title: Text("\"title\" dell'applicazione"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "\"Body\" dell'applicazione",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                )
              ),
              Text(
                "Secondo \"Text\" della \"Column\"",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  color: Colors.black38,
                ),
              ),
            ],
          ),
      ),
    );
  }
}