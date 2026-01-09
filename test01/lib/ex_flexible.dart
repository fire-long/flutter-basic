import 'package:flutter/material.dart';

class ExFlexible extends StatelessWidget {
  const ExFlexible({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          Text("flexible&expanded 미사용"),
          Row(
            children: [
              Container(color: Colors.red,
              width:300,
              height: 50,),
              Container(color: Colors.orange,
                width:300,
                height: 50,)
            ],
          ),
          Text("flexible 사용"),
          //flexible: 반응형 앱을 위해 하위 위젯을 비율로 사이즈 변경
          Row(
            children: [
              Flexible(
                //fit: loose(공간이 남으면 남은 공간 그대로 출력)
                child: Container(color: Colors.red,
                  width:100,
                  height: 50,),
              ),
              Flexible(
                child: Container(color: Colors.orange,
                  width:100,
                  height: 50,),
              )
            ],
          ),
          Text("flexible에 tight 사용"),
          //flexible: 반응형 앱을 위해 하위 위젯을 비율로 사이즈 변경
          Row(
            children: [
              Flexible(
                fit:FlexFit.tight,
                //fit: FlexFit.tight(공간이 남으면 남은 공간 꽉 채움)
                child: Container(color: Colors.red,
                  width:100,
                  height: 50,),
              ),
              Flexible(
                fit:FlexFit.tight,
                child: Container(color: Colors.orange,
                  width:100,
                  height: 50,),
              )
            ],
          ),
          Text("flexible에 flex 사용"),
          //flexible: 반응형 앱을 위해 하위 위젯을 비율로 사이즈 변경
          Row(
            children: [
              Flexible(
                child: Container(color: Colors.red,
                  width:300,
                  height: 50,),
              ),
              Flexible(
                flex: 2, // flex는 비율
                child: Container(color: Colors.orange,
                  width:300,
                  height: 50,),
              ),
              Flexible(
                child: Container(color: Colors.yellow,
                  width:300,
                  height: 50,),
              )
            ],
          ),
          Text("Expanded 사용"),
          // Expanded: fit이 tight로 고정된 flexible
          Row(
            children: [
              Expanded(
                child: Container(color: Colors.red,
                  width:300,
                  height: 50,),
              ),
              Expanded(
                child: Container(color: Colors.orange,
                  width:300,
                  height: 50,),
              ),
              Expanded(
                child: Container(color: Colors.yellow,
                  width:300,
                  height: 50,),
              )
            ],
          )
        ],
      ))
    );
  }
}
