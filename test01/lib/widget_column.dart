import 'package:flutter/material.dart';
//StatelessWidget에서 에러 나면 해당 커서에서 ctrl + space
class ExColumn extends StatelessWidget {
  const ExColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              Text("컬럼 예제"),
              TextField(),
              ElevatedButton(onPressed: (){
                // 익명함수
                // - 단일성으로 사용되는 함수
                print("Hello");
              },
                  child: Text("클릭!!")),
              // 경로 + 파일명 + 확장자
              // 프로젝트 내 이미지 삽입 시, 사용하고 싶은 경우 pubspec.yaml 환경 설정
              Image.asset("images/Caracal.jpg")
            ],
          )),//AppBar 공간을 건너뛰게 하는 SafeArea
    );
  }
}
