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
  TextStyle _textStyle = TextStyle(
      color: Colors.white,
      fontSize: 16,
      fontWeight: FontWeight.bold
  );
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
        width: MediaQuery.of(context)
            .size
            .width, //هيك أنا أخذت العرض الحقيقي للشاشة
        color: Colors.blueAccent,
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 25),
              child: Text("i am 1",style: _textStyle,),
            ),
           Padding(
              padding: EdgeInsets.only(top: 25),
              child: Text("i am 2"),
            ),
            Padding(
              padding: EdgeInsets.only(top: 25),
              child: Text("i am 3",style: _textStyle,),
            ),
            Text("I am 4"),
            Text("I am 5"),
          ],
        ),
      ),
      drawer: Drawer(),
    );
  }
}
