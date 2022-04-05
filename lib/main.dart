import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_background/flutter_background.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
    final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int x=0;
  int y=0;
  bool i=true;


  void _incrementCounter() {
    setState(() {
          _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
        return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(

        child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            ElevatedButton(onPressed: (){
              _incrementCounter();
              if(i=true) {
                time();
                i = false;
              }

            }, child: Text('counter')),       Text('$x'),

          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _incrementCounter();
            Timer.periodic(Duration(seconds: 1), (timer) {
              print(x);
              x++;
            });

        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }

  void time() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      print(x);
      x++;
    });
  }
}
