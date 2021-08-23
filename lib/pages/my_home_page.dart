import 'dart:developer';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  _incrementCounter() {
    setState(() {
      _counter++;
    });

    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(Icons.person),
        title: Text('AUNTIE RAFIKI'),
        actions: [
          IconButton(
            onPressed: () {
              print('Edward');
            },
            icon: Icon(Icons.more_vert),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.music_note))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('you have pressed this button this many times'),
            Text('$_counter', style: Theme.of(context).textTheme.headline4)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: Icon(Icons.add),
      ),
    );
  }
}
