import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
//외부 라이브러리 사용 시 설치부터 해야 함


class ExToast extends StatelessWidget {
  const ExToast({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Center(
        child: ElevatedButton(onPressed: (){
          Fluttertoast.showToast(
              msg: "This is Center Short Toast",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0
          );
        }, child: Text("클릭"))
      ))
    );
  }
}
