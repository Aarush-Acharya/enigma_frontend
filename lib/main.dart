import 'package:enigma_frontend/app_colours.dart';
import 'package:enigma_frontend/line_chart.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Accessibility Analyser'),
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

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(
            widget.title,
            style: TextStyle(
                letterSpacing: 5,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 58, 1, 132),
                      borderRadius: BorderRadius.circular(30)),
                  height: 650,
                  width: 850,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      RotatedBox(
                        quarterTurns: -1, // Rotate 90 degrees counter-clockwise
                        child: Text(
                          'Accessibility Score',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              letterSpacing: 5,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      LineChartSample1(),
                    ],
                  ))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ));
  }
}
