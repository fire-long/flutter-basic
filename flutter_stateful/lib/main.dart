import 'package:flutter/material.dart';
import 'package:flutter_stateful/ex_animated.dart';
import 'package:flutter_stateful/ex_check.dart';
import 'package:flutter_stateful/ex_onboarding.dart';
import 'package:flutter_stateful/ex_radio.dart';
import 'package:flutter_stateful/ex_switch.dart';
import 'package:flutter_stateful/ex_toast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ExOnboarding(),
    );
  }
}

//_ private 란 뜻(내 dart 파일 이외에선 사용할 수 없다)
// public: 어디서든 사용 가능
//State<MyHomePage> createState(){return_MyHomePageState;}
// 메소드가 실행 문장이 한문장인 경우 람다식으로 표현 가능
// => (return이 있는 경우에도 return 키워드 생략)

//stateful 활용 버튼 클릭시 숫자 증가하는 어플
// stful
class ExButton extends StatefulWidget {
  const ExButton({super.key});

  @override
  State<ExButton> createState() => _ExButtonState();
}

class _ExButtonState extends State<ExButton> {
  int num1 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        SafeArea(child: Column(
          children: [
            Text("$num1 번째 클릭"),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              setState(() {
                num1++;
              });
            }, child: Text("클릭"))
          ],
        ))
    );
  }
}