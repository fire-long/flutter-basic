import 'package:flutter/material.dart';

class ExTf extends StatelessWidget {
  const ExTf({super.key});

  @override
  Widget build(BuildContext context) {
    //TextField 값을 갖고 오고자 controller가 필요
    TextEditingController emailCon = TextEditingController();
    //객체 생성 후 tf에 연결

    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          TextField(
            // 사용자 편의성을 위해 작성(강제성 X)
            controller:emailCon, //controller 연결

            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              label: Row(
                children: [
                  Icon(Icons.account_circle),
                  Text("이메일"),
                ],
              ),
              hintText: "example@example.com",
              hintStyle:TextStyle(color: Colors.grey[300])
            )
          ),
          TextField(
            // 비밀번호 입력 칸
            keyboardType: TextInputType.text,
            obscureText: true, // 비밀번호 설정
          ),
          ElevatedButton(onPressed: (){
            print("hello");
            String text = emailCon.text;
            print(text);
          }, child: Text("확인"))
        ],
      ))
    );
  }
}
