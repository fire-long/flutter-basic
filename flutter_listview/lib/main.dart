import 'package:flutter/material.dart';
import 'package:flutter_listview/screen/basic_listview.dart';
import 'package:flutter_listview/screen/ex_image.dart';
import 'package:flutter_listview/screen/ryan_list.dart';
import 'package:flutter_listview/screen/ryan_list2.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ExImage(),
    );
  }
}