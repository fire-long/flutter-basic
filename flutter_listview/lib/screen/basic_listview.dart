import 'package:flutter/material.dart';

List<int> intList = List<int>.generate(100, (i) => i++);

//generate 함수
//(데이터 개수, 실행될 메소드 i라는 매개변수를 생성 후 1 증가)
class BasicListview extends StatelessWidget {
  const BasicListview({super.key});

  @override
  Widget build(BuildContext context) {
    //print(intList);
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          //RangeError 방지를 위해 item의 길이 작성 권장
          itemCount: intList.length,
          itemBuilder: (_, i) {
            //return이 의미하는 widget은 한 아이템(타일, 칸) 디자인
            //i: i번째 아이템
            return Container(
              margin: EdgeInsets.all(8),
              height: 50,
              color: Colors.grey,
              child: Center(child: Text("${intList[i]}번째 아이템")),
            );
          },
        ),
      ),
    );
  }
}

//가로형
class BasicListView2 extends StatelessWidget {
  const BasicListView2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: intList.length,
          itemBuilder: (_, i) {
            return Container(
              margin: const EdgeInsets.all(8),
              width: 50,
              color: Colors.grey,
              child: Center(child: Text('${intList[i]}번째 아이템')),
            );
          },
        ),
      ),
    );
  }
}

class GridCount extends StatelessWidget {
  const GridCount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GridView.builder(
          //gridDelegate : count or extend 설정
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            // crossAxisCount: 가로로 출력될 아이템의 개수(디바이스 크기와 무관하게)
            crossAxisCount: 3,
            // 가로 세로 비율 : 가로/세로
            childAspectRatio: 1 / 2,
            //수평 패딩
            mainAxisSpacing: 16,
            // 수직 패딩
            crossAxisSpacing: 16,
          ),
          itemBuilder: (_, i) {
            return Container(
              height: 50,
              color: Colors.red[200],
              child: Center(child: Text('${intList[i]}번째 아이템')),
            );
          },
        ),
      ),
    );
  }
}

class GridExtend extends StatelessWidget {
  const GridExtend({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 100, //디바이스 가로길이/maxCrosAxisExtend + 1개 출력
            crossAxisSpacing: 20,
            mainAxisSpacing: 20
          ),
          itemBuilder: (_, i) {
            return Container(
              margin: const EdgeInsets.all(8),
              width: 50,
              color: Colors.red[200],
              child: Center(child: Text('${intList[i]}번째 아이템')),
            );
          },
        ),
      ),
    );
  }
}
