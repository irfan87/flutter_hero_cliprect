import 'package:flutter/material.dart';
import 'package:hero_cliprect/secondScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text("Today we are developing a Hero app with ClipRect", style: TextStyle(fontSize: 20),),
          ),
          Padding(
            padding: const EdgeInsets.all(35.0),
            child: Hero(
              tag: 'tag',
              child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
                child: Container(
                  padding: EdgeInsets.all(30),
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    gradient: LinearGradient(colors: [
                      Colors.lightBlue,
                      Colors.blueGrey
                    ])
                  ),
                ),
              )
            )
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: RaisedButton(  
              color: Colors.blue,
              child: Text("Second Screen", style: TextStyle(color: Colors.white)),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen()));
              },
            ),
          )
        ],

      ),
    );
  }
}
