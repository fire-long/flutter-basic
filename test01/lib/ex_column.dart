import 'package:flutter/material.dart';

class ExFirst extends StatelessWidget {
  const ExFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('첫번째 예제'),
        backgroundColor: Colors.pinkAccent
      ),
      body:Center(
        child: Column(
          children: [
            Image.asset("images/Caracal.jpg"
                , width:120, height: 120),
            Text("안녕 내이름은 카라칼이야!")
          ],
        ),
      )
    );
  }
}
