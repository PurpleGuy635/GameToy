import 'dart:async';

import 'package:flutter/material.dart';

import 'firstpage.dart';
import 'secondpage.dart';
import 'thirdpage.dart';

void main() {
  runApp(const MyHomePage(
    title: 'GameToy',
  ));
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.amber,
        child: Image.network(
            'https://media.discordapp.net/attachments/1019587796257746977/1023555347975258132/logo_tintendo.png?width=640&height=640'));
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Exemple")),
      body: const Center(
          child: Text("Welcome to Home Page",
              style: TextStyle(color: Colors.black, fontSize: 30))),
    );
  }
}

/*
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.purple,
        child: Image.network(
            'https://media.discordapp.net/attachments/1019587796257746977/1023555347975258132/logo_tintendo.png?width=640&height=640'));
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Exemple")),
      body: const Center(
          child: Text("Welcome to Home Page",
              style: TextStyle(color: Colors.black, fontSize: 30))),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GameToy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FirstPage(title: 'GameToy'),
      routes: <String, WidgetBuilder>{
        '/route1': (BuildContext context) => FirstPage(title: 'Menu'),
        '/route2': (BuildContext context) => SecondPage(title: 'TicTacToe'),
        '/route3': (BuildContext context) => ThirdPage(title: 'Taquin'),
      },
    );
  }
}
*/