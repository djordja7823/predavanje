import 'dart:io';

import 'package:flutter/material.dart';

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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.\
        primarySwatch: Colors.yellow,
      ),
      home: const MyHomePage(title: 'Filip Djordjic'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter2() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter+=2;
    });
  }

  void _incrementCounter1() {
    setState(() {
      _counter++;
    });
  }

  void _incrementCounter3() {
    setState(() {
      _counter+=3;
    });
  }


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20,),
        toolbarHeight: 40,
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: <Color> [
              Colors.purple,
              Colors.blue,
            ]
          )
          ),
        ),

        )
      ,
      body: Center(

        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child:

        Column(
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
          children: <Widget> [
            Stack(
              children: <Widget>[
                // Stroked text as border.
                Text(
                  'Stisnuli ste dugme',
                  style: TextStyle(
                    fontSize: 40,
                    letterSpacing: 3.5,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 6
                      ..color = Colors.blue[700]!,

                  ),
                ),
                // Solid text as fill.
                Text(
                  'Stisnuli ste dugme',
                  style: TextStyle(
                    fontSize: 40,
                    letterSpacing: 3.5,
                    color: Colors.grey[300],
                  ),
                ),
              ],
            ),
            Stack(
              children: <Widget>[
                // Stroked text as border.
                Text(
                  '$_counter',
                  style: TextStyle(
                    fontSize: 40,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 6
                      ..color = Colors.blue[700]!,
                  ),
                ),
                // Solid text as fill.
                Text(
                  '$_counter',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.grey[300],
                  ),
                ),
              ],
            ),
            Stack(
              children: <Widget>[
                // Stroked text as border.
                Text(
                  'puta!',
                  style: TextStyle(
                    fontSize: 40,
                    letterSpacing: 2.0,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 6
                      ..color = Colors.blue[700]!,
                  ),
                ),
                // Solid text as fill.
                Text(
                  'puta!',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.grey[300],
                    letterSpacing: 2.0,
                  ),
                ),
              ],
            ),
            Text(''),
            Text(''),
            Text(''),
      RaisedButton(
        elevation: 20,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        onPressed: _incrementCounter1,
        hoverColor: Colors.grey,
        padding: EdgeInsets.all(0),
        child: Container(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 35),
            child: Text('+1'),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: <Color> [
                    Colors.blue,
                    Colors.purple,
                  ]
              ),
              border: Border.all(width: 4,color: Colors.black),
              borderRadius: BorderRadius.circular(20),
            )
        ),
      ),
            Text(''),
      RaisedButton(
        elevation: 20,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        onPressed: _incrementCounter2,
        hoverColor: Colors.grey,
        padding: EdgeInsets.all(0),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 35),
                child: Text('+2'),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color> [
                      Colors.blue,
                      Colors.purple,
                    ]
                  ),
                    border: Border.all(width: 4,color: Colors.black),
                    borderRadius: BorderRadius.circular(20),
                  )
                ),
              ),

      //padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),),
            Text(''),
            RaisedButton(
              elevation: 20,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              onPressed: _incrementCounter3,
              hoverColor: Colors.grey,
              padding: EdgeInsets.all(0),
              child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 35),
                  child: Text('+3'),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: <Color> [
                          Colors.blue,
                          Colors.purple,
                        ]
                    ),
                    border: Border.all(width: 4,color: Colors.black),
                    borderRadius: BorderRadius.circular(20),
                  )
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter2,
        tooltip: 'Increment',
        hoverElevation: 20,
        shape: CircleBorder(side: BorderSide(width: 0)),
        child: Container(
          child: const Icon(Icons.add_circle),
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: <Color> [
                Colors.blue,
                Colors.purple,
              ]
            ),
              borderRadius: BorderRadius.circular(200),
              border: Border.all(width: 1),

          ),
        )
      ),
      backgroundColor: Colors.yellow,// This trailing comma makes auto-formatting nicer for build methods.
    );

  }
}