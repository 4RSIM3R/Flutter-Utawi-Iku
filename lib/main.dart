import 'package:flutter/material.dart';
import 'package:utawi_iku/layout.dart';
import 'package:utawi_iku/payment.dart';
import 'package:utawi_iku/welcome.dart';
import 'dart:async';

import 'login.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
  void initState() { 
    super.initState();
    Timer(Duration(seconds: 3), () => {
      Navigator.push(context, MaterialPageRoute(
        builder: (context) =>  Welcome()
      ))
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset("assets/images/utawi.jpg", width: Config.sizeWidht, height: Config.sizeHeight,),
      ),
    );
  }
}



