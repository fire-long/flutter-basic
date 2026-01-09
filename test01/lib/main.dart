import 'package:flutter/material.dart';
import 'package:test01/ex_flexible.dart';
import 'package:test01/ex_kakao.dart';
import 'package:test01/ex_sized.dart';
import 'package:test01/ex_container.dart';
import 'package:test01/ex_icon_container.dart';
import 'package:test01/ex_max.dart';
import 'package:test01/widget_column.dart';
import 'package:test01/ex_column.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ExKakao() //명명적 매개변수 home -> 세미콜론 안 씀!!
    );
  }
}

// stateless 화면 만드는 법
// stless + ctrl + space
class Ex01 extends StatelessWidget {
  const Ex01({super.key});

  @override //부모에게 상속받은 기능을 재정의
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("나의 첫 플러터 앱"),
        backgroundColor: Colors.redAccent[100],
      ),
      body: Center(
        //Center는 하나의 위젯만 받음 -> child 채택
        //children을 채택하는 위젯은 Row, Column를 비롯해 세 개밖에 없음
        child: Row( //가로로 위젯을 쌓음
          children: [
            Text("안녕하세요",
            style:TextStyle(
              fontSize: 24
            ),
              //textAlign: TextAlign.center,//Text 위젯 크기가 제한되어있어서
              //글씨 길이가 늘어나야지만 중앙 정렬이 된 걸 볼 수 있음.
              //그래서 Text에 alt+enter로 wrap with center 진행
            ),
            Icon(Icons.add_alert, color: Colors.green, size: 64)
          ],
        ),
      ),
    );
  }
}
