import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: '409631446 蔡廷威'),
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
      _counter=0;
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
            children: [
              SizedBox(
                width: 150,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.amberAccent,
                  ),
                  child: Text("Raised button",
                    style: TextStyle(
                        color: Colors.red
                    ),
                    textScaleFactor: 1.0,
                  ),
                  onPressed: (){},
                ),
              ),
              SizedBox(height: 20,),
              SizedBox(
                width: 100,
                height: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                  ),
                  child: Text("Flat button",
                    textScaleFactor: 1.0,
                  ),
                  onPressed: (){},
                ),
              ),
              SizedBox(height: 20,),
              SizedBox(
                width: 110,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                  ),
                  child: Text("Snackbar",
                    textScaleFactor: 1.2,
                  ),
                  onPressed:(){
                    final snackBar = SnackBar(
                        content: const Text("按下了Snackbar按鈕")
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                ),
              ),
              IconButton(
                  onPressed: (){},
                  icon:Icon(Icons.smartphone,
                  )
              ),
              FloatingActionButton(
                onPressed: _incrementCounter,
                tooltip: 'Increment',
                child: const Icon(Icons.smartphone),
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    primary: Colors.black12
                ),
                onPressed: (){},
                icon:Icon(Icons.smartphone,color: Colors.red,),
                label:Text("Raisedbutton.icon",
                  style: TextStyle(
                      color: Colors.red
                  ),
                ),
              ),
            ]
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.smartphone),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}







