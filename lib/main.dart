import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practice',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: Colors.white, foregroundColor: Colors.black, toolbarTextStyle: TextStyle(color: Colors.black87), elevation: 0),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = "임시타이틀";
  int times = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const IconButton(
          icon: Icon(Icons.menu),
          tooltip: "Menu",
          onPressed: null,
          iconSize: 35,
        ),
        title: TextButton(
          onPressed: null,
          style: TextButton.styleFrom(textStyle: const TextStyle(fontSize: 25)),
          child: Text(
            title + times.toString(),
            style: const TextStyle(color: Colors.black),
          ),
        ),
        actions: const <Widget>[
          IconButton(
            onPressed: null,
            icon: Icon(Icons.search),
            iconSize: 35,
          ),
          IconButton(
            onPressed: null,
            icon: Icon(Icons.map_outlined),
            iconSize: 35,
          )
        ],
      ),
      body: const SingleChildScrollView(
        child: Text("..sdfasdf"),
      ),
    );
  }
}
