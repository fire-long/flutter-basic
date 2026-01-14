import 'package:flutter/material.dart';

// List<String>
var ryanName = ['리틀 라이언', '반짝 라이언', '하트하트 라이언'
  , '춘식이와의 만남', '룸메는 춘식이', '좋아요'];

var imgList = [
  'images/ryan1.jpg',
  'images/ryan2.png',
  'images/ryan3.jpg',
  'images/ryan4.png',
  'images/ryan5.png',
  'images/ryan6.jpg',
];

class RyanList extends StatefulWidget {
  const RyanList({super.key});

  @override
  State<RyanList> createState() => _RyanListState();
}

class _RyanListState extends State<RyanList> {

  void showPopUp(String image, String text){
    // showDialog() method 활용
    showDialog(context: context, builder: (_){
      // dialog 창 디자인
      return Dialog(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.7,
          height: 380,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.white),
          child: Column(
            children: [
              const SizedBox(height: 32,),
              ClipRRect( // 하위 위젯 모서리 둥글게
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  image,
                  width: 200,
                  height: 200,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                text,
                style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton.icon(onPressed: (){
                      setState(() {
                        imgList.remove(image);
                        ryanName.remove(text);
                      });


                    }, icon: Icon(Icons.close), label: Text('삭제하기'),
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.red[100])),
                    SizedBox(width: 10,),
                    ElevatedButton.icon(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.close), label: Text('close')),
                  ],
                ),
              )
            ],
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){
            setState(() {
              imgList.add("images/ryan1.jpg");
              ryanName.add("리틀 라이언");
            });
          }
      ),
      body: SafeArea(
          child: ListView.builder(
              itemCount: imgList.length,
              itemBuilder: (_,i){
                return GestureDetector(
                  onTap: (){
                    // setState(() {
                    showPopUp(imgList[i], ryanName[i]);
                    // });
                  },
                  onLongPress: (){
                    setState(() {
                      imgList.removeAt(i);
                      ryanName.removeAt(i);
                    });
                  },
                  child: Card(
                    child: Row(
                      children: [
                        Expanded(child: Image.asset(imgList[i])),
                        Expanded(
                          child: Column(
                            children:[
                              Text(ryanName[i]),
                              Text("${i+1}th ryan")
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }
          )
      ),
    );
  }
}