import 'package:flutter/material.dart';
import 'package:flutter_page/screen/color_blue.dart';
import 'package:flutter_page/screen/color_green.dart';
import 'package:flutter_page/screen/color_page.dart';
import 'package:flutter_page/screen/color_red.dart';
import 'package:flutter_page/screen/ex_first.dart';
import 'package:flutter_page/screen/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //route 관리: 이름으로 페이지를 접근
      routes: {
        // '/'를 쓴 이유 -> web에서 url을 /로 관리하므로, 이를 이어받음. 큰 의미 X
        "/red": (_)=>ColorRed(),
        "/blue": (_)=>ColorBlue(),
        "/green": (_)=>ColorGreen()
      },
      home: LoginPage()
    );
  }
}