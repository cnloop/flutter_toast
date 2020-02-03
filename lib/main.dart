import 'package:flutter/material.dart';
import 'package:flutter_toast/toast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Builder(
        builder: (context) {
          Toast.init(context);
          return BaseLayout();
        },
      ),
    );
  }
}

class BaseLayout extends StatelessWidget {
  const BaseLayout({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Container(
          child: Text('Hello World'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.alarm),
        onPressed: () {
          Toast.show(message: 'Hello');
        },
      ),
    );
  }
}
