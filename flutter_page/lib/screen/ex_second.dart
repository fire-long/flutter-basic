import 'package:flutter/material.dart';
import 'package:flutter_page/screen/ex_first.dart';

class ExSecond extends StatelessWidget {
  const ExSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("두번째 페이지"),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          // 요약
          // 실행코드가 한 줄인 경우 람다식으로 => 표현 가능
          Navigator.push(context, MaterialPageRoute(
              builder: (_) => ExFirst()));
          //builder에서 매개변수 context인 경우 _로 생략하는 경우 많음
          //
        },
            child: Text("첫번째 페이지로 이동")),
      )
    );
  }
}
