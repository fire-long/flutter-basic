import 'package:flutter/material.dart';

class ExLogin extends StatelessWidget {
  const ExLogin({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailCon = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent,
        title: Center(
          child: Text('로그인 화면', style: TextStyle(fontWeight: FontWeight.bold)),
        ),
      ),
      body: GestureDetector(
        // 제스쳐 감지하는 위젯
        // 하위 위젯에게 제스쳐를 부여하는 위젯

        onTap: (){
          // 클릭 시 포커스를 잃어버리는 코드
          FocusScope.of(context).unfocus();
        },

        child: SingleChildScrollView(
          // 하위 위젯에게 스크롤을 주는 위젯
          child: Column(
            children: [
              Image.asset('./images/littleryan.gif'),
              Padding(
                padding: const EdgeInsets.all(16),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    label: Row(children: [Text("email 입력")]),
                    hintText: "example@example.com",
                    hintStyle: TextStyle(color: Colors.grey[300]),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: TextField(
                  decoration: InputDecoration(label: Text("비밀번호 입력")),
                  keyboardType: TextInputType.text,
                  obscureText: true,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  String text = emailCon.text;
                },
                child: Text("로그인하기"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
