import 'package:flutter/material.dart';
import 'package:flutter_http/screen/ex_dog.dart';
import 'package:flutter_http/screen/ex_store.dart';
import 'package:flutter_http/screen/ex_user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ExStore(),
    );
  }
}