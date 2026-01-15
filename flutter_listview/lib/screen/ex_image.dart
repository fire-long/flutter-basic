import 'package:flutter/material.dart';

class ExImage extends StatelessWidget {
  const ExImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height:  150,
          color: Colors.grey,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.red,
                  child: Image.asset('images/ryan1.jpg',
                    //fit: BoxFit.fill, // 비율 무관하게 가로세로 꽉 채움
                    //fit: BoxFit.contain, //부모 위젯의 크기에 맞춰 원본 유지한 상태
                    //fit: BoxFit.fitHeight, //부모 위젯의 세로 크기에 맞춰 비율 조정
                    //fit: BoxFit.fitWidth, //가로가 잘릴 위험이 있음
                    //fit: BoxFit.cover, //부모 위젯의 가로/새로 중 큰 크기 비율에 맞춰 조정
                    fit: BoxFit.none, //그냥 원본 출력
                  ),
                ),
              ),

              Expanded(
                child: Image.asset('images/ryan1.jpg'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
 