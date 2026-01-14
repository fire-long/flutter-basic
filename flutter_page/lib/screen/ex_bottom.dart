import 'package:flutter/material.dart';
import 'package:flutter_page/screen/ex_bottom_one.dart';
import 'package:flutter_page/screen/ex_bottom_two.dart';

class ExBottom extends StatefulWidget {
  const ExBottom({super.key});

  @override
  State<ExBottom> createState() => _ExBottomState();
}

class _ExBottomState extends State<ExBottom> {
  //build 밖에 있어야 함!!
  int index = 0;
  List<Widget> bodyList = [ExBottomOne(), ExBottomTwo()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("bottom navigation 예제")),


      body: bodyList[index],
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "홈"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "내 정보")
      ],
        selectedItemColor: Colors.red,
        unselectedItemColor:Colors.blue,

        //optional
        showSelectedLabels: false,
        showUnselectedLabels: false,

        //선택된 item
        currentIndex: index,
        onTap: (i){ //i: 선택한 item의 index 번호 출력
          print(i);
          setState(() {
            index = i;
          });
        },
      ),
    );
  }
}
