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
      appBar: AppBar(
        //هذا خاص بالجزء الي فوق من التطبيق كال nav
//        elevation: 0,
        centerTitle: true,
        title: Text("My First"),
      ),
      body: Container(
//        width: 250,
        width: MediaQuery.of(context).size.width,//هيك أنا أخذت العرض الحقيقي للشاشة
        color: Colors.blueAccent,
        child: Column(
          children: <Widget>[
            Text("I am 1"),
            Text("I am 2"),
            Text("I am 3"),
            Text("I am 4"),
            Text("I am 5"),
          ],
        ),
      ),
      drawer: Drawer(),
    );
  }
}
