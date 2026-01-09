import 'package:flutter/material.dart';

class ExMax extends StatelessWidget {
  const ExMax({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,//부모 위젯의 가로 길이 만큼(여기선 device)
          height: 100,
          margin: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.purple,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
