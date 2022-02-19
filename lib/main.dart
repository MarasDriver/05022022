import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: const TextTheme(
            headline1: TextStyle(
          // fonty trzeba uzupełnić w pubspec.yaml i stworzyć na nie osobny folder  i plik
          fontFamily: 'Catamaran',
          fontSize: 40,
        )),
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
            const Image(
                image: AssetImage('assets/img/carrot-g30532e8d5_1280.png'),
                fit: BoxFit.fitHeight),
            Image.asset('assets/img/carrot-g30532e8d5_1280.png'),
            // Container(
            //   height: 100,
            //   width: 200,
            //   decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/img/carrot-g30532e8d5_1280.png'),),
            // ),
            Text(
              'You have pushed the button this many times:',
              style: Theme.of(context).textTheme.headline1,
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
