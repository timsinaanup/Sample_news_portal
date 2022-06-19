import 'package:app_new/screen/MyHomescreen.dart';
import 'package:app_new/screen/first.dart';
import 'package:flutter/material.dart';
import 'package:app_new/screen/second.dart';

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
      theme: ThemeData(primarySwatch: Colors.blue),
      home: first(),
    );
  }
}
