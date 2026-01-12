import 'package:flutter/material.dart';

class ExCu extends StatelessWidget {
  const ExCu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("더보기", style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [
          //우측에 위젯 배치
          Icon(Icons.settings),
          SizedBox(width: 20),
        ],
        // 좌측 위젯 배치
        leading: Icon(Icons.menu),
      ),
      body: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "박*호님",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Text(
                      "Friend",
                      style: TextStyle(
                        color: Color(0xff751485),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 3),
                    Text(
                      "155p",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(3),
            ),
            width: double.infinity,
            height: 80,
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(24),
          ),
          SizedBox(height: 30),
          Container(
            child: Row(
              children: [
                Text(
                  "서비스",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            padding: EdgeInsets.all(24),
          ),

          Padding(
            padding: EdgeInsets.all(24),
            child: Row(
              children: [
                Column(
                  children: [
                    Stack(
                      children: [
                        Icon(Icons.copyright, size: 50),
                        Positioned(
                          child: Container(
                            width: 15,
                            height: 15,
                            decoration: BoxDecoration(
                              color: Colors.pinkAccent,
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: Center(child: Text("N", style: TextStyle(color: Colors.white, fontSize: 12)))
                          ),
                          bottom: 3,
                          right: 3,
                        ),
                      ],
                    ),

                    Text(
                      "포인트 충전소",
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(width: 10),
                Column(
                  children: [
                    Stack(
                      children: [
                        Icon(Icons.chat, size: 50),
                        Positioned(
                          child: Container(
                            width: 15,
                            height: 15,
                            decoration: BoxDecoration(
                              color: Colors.pinkAccent,
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: Center(child: Text("N", style: TextStyle(color: Colors.white, fontSize: 12))),
                          ),
                          bottom: 3,
                          right: 3,
                        ),
                      ],
                    ),
                    Text(
                      "상담하기",
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],

            ),
          ),
        ],
      ),
    );
  }
}
