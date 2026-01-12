import 'package:flutter/material.dart';

class ExRow extends StatelessWidget {
  const ExRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
              color: Colors.greenAccent,
              height: 100,
              child: Row(
                // 주축의 정렬을 바꾸는 코드
                // Row는 가로, Column은 세로
                // mainAxisAlignment: MainAxisAlignment.center,

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // spaceBetween: 양 옆에 위젯을 배치한 후 일정 간격으로 정렬
                // spaceAround: 양 팔 벌려 나란히 공백을 가짐
                // spaceEvenly: 모든 위젯이 동일한 공백을 가짐

                // cross: 주축 반대의 정렬을 바꾸는 코드
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("hello"),
                  Text("안녕"),
                  Text("world")
                ],
              )

            )
        ),
    );
  }
}
