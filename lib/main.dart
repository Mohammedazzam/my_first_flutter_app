import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( //هذا خاص بالجزء الي فوق من التطبيق كال nav
//        elevation: 0,
      centerTitle: true,
        title: Text("My First"),
        backgroundColor: Colors.red,
        actions: <Widget>[
          FlatButton(
            child: Text("click1" ,style: TextStyle(color: Colors.white),),
            onPressed: (){
              print('clicked');
            },
          ),
          FlatButton(
            child: Text("click2"),
          ),
        ],
      ),
      body: Container(

      ),
);
  }
}
