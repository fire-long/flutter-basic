import 'package:flutter/material.dart';
import 'package:flutter_page/screen/ex_second.dart';
import 'package:flutter_page/screen/ex_third.dart';

class ExFirst extends StatelessWidget {
  const ExFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("첫번째 페이지"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: (){
              //페이지 이동
              Navigator.push(context,
                  MaterialPageRoute(builder: (context){
                    //return widget에서 widget 이동할 페이지 이름
                    return ExSecond();
                  }));

            },
                child: Text("두번째 페이지로 이동")
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=>ExThird()));
            }, child: Text("세번째 페이지 이동"))
          ],
        ),
      ),
    );
  }
}