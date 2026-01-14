import 'package:flutter/material.dart';

class LoginSuccessPage extends StatelessWidget {
  const LoginSuccessPage({super.key, required this.text});//생성자. key는 매개변수
  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("$text님 환영합니다.")
      ),
    );
  }
}
