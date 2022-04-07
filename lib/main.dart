import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Text('سلام سعید خوبی؟'),
          ElevatedButton(
              onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home(),)
            );
          }, child: Text('سلام سعید خوبی؟'))
        ],
      ),
    );
  }
}
