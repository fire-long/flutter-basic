import 'package:flutter/material.dart';
import 'package:flutter_listview/screen/ryan_detail_page.dart';

var ryanName = ['리틀 라이언', '반짝 라이언', '하트하트 라이언', '춘식이와의 만남', '룸메는 춘식이', '좋아요'];

var imgList = [
  'images/ryan1.jpg',
  'images/ryan2.png',
  'images/ryan3.jpg',
  'images/ryan4.png',
  'images/ryan5.png',
  'images/ryan6.jpg',
];

class RyanList2 extends StatelessWidget {
  const RyanList2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: imgList.length,
          itemBuilder: (_, i) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => RyanDetailPage(
                      name: ryanName[i],
                      image: imgList[i],
                      index: i,
                    ),
                  ),
                );
              },

              child: Card(
                child: Row(
                  children: [
                    Expanded(child: Image.asset(imgList[i])),
                    Expanded(
                      child: Column(
                        children: [Text(ryanName[i]), Text("${i + 1}번째 라이언")],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
