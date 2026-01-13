import 'package:flutter/material.dart';
import 'package:flutter_page/screen/ex_first.dart';

class ExThird extends StatelessWidget {
  const ExThird({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("세번째 페이지"),
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text("이전 페이지")),

              ElevatedButton(onPressed: (){
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (_)=> ExFirst()));
              }, child: Text("replacement")),

              ElevatedButton(onPressed: (){
                Navigator.pushAndRemoveUntil(context,
                    MaterialPageRoute(builder: (_) => ExFirst())
                    , (route) => false);

                //predicate
                //true: 제거하지 않음, false: 제거

                //pushAndRemoveUntil: 이전 모든 페이지 삭제하는 기능


              }, child: Text("Add Remove Until"))
            ],
          ),
        )
    );
  }
}
