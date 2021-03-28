import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyHomePage();
  }
}

class MyHomePage extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _MyHomePage();
  }
}

class _MyHomePage extends State<MyHomePage> {
  String title = 'Hello, World';
  String name = 'Wei-Tsung Su';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApp',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Column(
            children: [
              Text('$title'),
              TextField(
                controller: TextEditingController(text: '$name'),
                onChanged: (val) {
                  //setState(() {
                  name = val;
                  //})
                },
              ),
              ElevatedButton(
                child: Icon(Icons.thumb_up),
                onPressed: () => {
                  setState(() {
                    title = 'Hello, $name';
                  })
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
