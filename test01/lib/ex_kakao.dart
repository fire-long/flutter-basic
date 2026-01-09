import 'package:flutter/material.dart';

class ExKakao extends StatelessWidget {
  const ExKakao({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child:
          Flexible(
            fit:FlexFit.tight,
            child: Container(
              width: double.infinity,
              height: 40,
              margin: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: Colors.yellowAccent,
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: Row(
                  children: [
                    Image.asset("images/kakaotalk.jpg"),
                    SizedBox(width:20,),
                    Text("카카오톡으로 로그인하기")
                  ]
              , mainAxisAlignment: MainAxisAlignment.center),
          )
      )
    )
    );
  }
}
