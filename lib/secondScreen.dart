import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Screen')),
      body: Column(children: <Widget>[
          Hero(
            tag: 'tag',
            child:  Container(
              height: 500,
              color: Colors.indigoAccent
            )
          )
         
        ],
      )
    );
  }
}