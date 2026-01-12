import 'package:flutter/material.dart';

class ExStack extends StatelessWidget {
  const ExStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(//겹치는 위젯 -> Children
            // 코드상 뒤에 작성할수록 실제 앞에 위치

            alignment: Alignment.center,
            children: [
              //stack 위젯의 위치를 절대 좌표로 수정
              // stack 위젯은 최대 크기에서 벗어난 위치에 그리려 하면 출력안됨
              Container(
                width: 200,
                height: 200,
                color: Colors.red,
              ),
              Container(
                width: 150,
                height: 150,
                color: Colors.orange,
              ),
              Positioned(
                top: 20,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                ),
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.blue,
              )
            ],

          )
      ),
    );
  }
}
