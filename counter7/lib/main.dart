// Dhafiano Fadeyka Ghani Wiweko
// 2106751631
// PBP-E

import 'package:flutter/material.dart';
import 'package:counter7/drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: const MyHomePage(title: 'Program Counter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String genap = 'genap ';
  String ganjil = 'ganjil ';
  void _incrementCounter() {
    setState(() {
    
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        drawer: const MyDrawer(),
        body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
            // Column is also a layout widget. It takes a list of children and
            // arranges them vertically. By default, it sizes itself to fit its
            // children horizontally, and tries to be as tall as its parent.
            //
            // Invoke "debug painting" (press "p" in the console, choose the
            // "Toggle Debug Paint" action from the Flutter Inspector in Android
            // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
            // to see the wireframe for each widget.
            //
            // Column has various properties to control how it sizes itself and
            // how it positions its children. Here we use mainAxisAlignment to
            // center the children vertically; the main axis here is the vertical
            // axis because Columns are vertical (the cross axis would be
            // horizontal).
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              if (_counter % 2 == 0) ...[
                const Text(
                  'GENAP',
                  style: TextStyle(color: Color.fromARGB(255, 255, 0, 0)),
                ),
              ] else ...[
                const Text(
                  'GANJIL',
                  style: TextStyle(color: Color.fromARGB(255, 255, 0, 0)),
                ),
              ],
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
        floatingActionButton: Padding(
            padding: EdgeInsets.only(left: 30),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                if (_counter == 0) ...{
                  Expanded(child: Container()),
                  FloatingActionButton(
                    onPressed: _incrementCounter,
                    tooltip: 'Increment',
                    child: const Icon(Icons.add),
                  ), // This trailing comma makes auto-formatting nicer for build methods.
                } else ...{
                  FloatingActionButton(
                    onPressed: _decrementCounter,
                    tooltip: 'Decrement',
                    child: const Icon(Icons.remove),
                  ), // This trailing comma makes auto-formatting nicer for build methods.
                  Expanded(child: Container()),
                  FloatingActionButton(
                    onPressed: _incrementCounter,
                    tooltip: 'Increment',
                    child: const Icon(Icons.add),
                  ), // This trailing comma makes auto-formatting nicer for build methods.
                }
              ],
            )));
  }
}
