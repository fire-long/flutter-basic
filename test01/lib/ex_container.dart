import 'package:flutter/material.dart';

class ExContainer extends StatelessWidget {
  const ExContainer ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child:
          Container(
            //margin: 바깥 여백
            //padding: 안쪽 여백

            // .fromLTRB(좌상우하)의 숫자를 넣으면 해당 마진 가능
            //margin: EdgeInsets.fromLTRB(10, 10, 10, 10),

            // .all(숫자) 숫자만큼 모든 방향에 마진 가능
            //   margin: EdgeInsets.all(20),

            // .only()
              margin: EdgeInsets.only(top: 50),
              padding: EdgeInsets.all(50),
              // color:Colors.blueAccent, //decoration 쓸 때는 color 요소 사용 불가
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                border: Border.all(color: Colors.black, width:8),
                borderRadius: BorderRadius.all(Radius.circular(50))
              ),
              width: 300,
              height: 300,
              child: Text("hello world",
                style: TextStyle(fontSize:36),
                //textAlign: TextAlign.center,
              )
          )
      ),
    );
  }
}
