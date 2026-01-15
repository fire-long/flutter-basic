import 'package:flutter/material.dart';
import 'package:flutter_http/model/store_model.dart';
import 'package:flutter_http/screen/ex_store_detail.dart';
import 'package:http/http.dart' as http;

class ExStore extends StatefulWidget {
  const ExStore({super.key});

  @override
  State<ExStore> createState() => _ExStoreState();
}

class _ExStoreState extends State<ExStore> {
  List<StoreModel> storeList = [];
  bool isLoading = true;

  Future<void> loadData() async {
    //0.pubspec.yaml
    //1.통신할 주소
    String url = 'https://fakestoreapi.com/products';

    //2.통신
    http.Response res = await http.get(Uri.parse(url));

    //3.확인
    print(res.body);
    if (res.statusCode == 200) {
      storeList = storeModelFromJson(res.body);

      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fake Store 예제"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
        ],
      ),
      body: ListView.builder(
        itemCount: storeList.length,
        itemBuilder: (_, index) {
          return Card(
            margin: const EdgeInsets.all(8),
            elevation: 2,
            child: ListTile(
              leading: Image.network(
                storeList[index].image,
                height: 60,
                width: 60,
                fit: BoxFit.contain,
              ),
              title: Text(
                storeList[index].title,
                maxLines: 1, //텍스트 길이 무관하게 한줄
                overflow: TextOverflow.ellipsis, //텍스트 길이가 maxLines 벗어날 때 출력 방법

                //ellipsis: ... 으로 표시
                //clip: 넘어가는 텍스트 자름
                //visible: 텍스트 출력(타위젯과 겹칠 수 있음)
                //fade: 흐려지면서 뒤에는 안 보임
              ),
              // $를 포매팅을 쓰니까, 문자 그대로 달러 표시하려면 역슬래시 사용
              subtitle: Text("\$${storeList[index].price}"),
              onTap: () {

                Navigator.push(context,
                    MaterialPageRoute(builder: (_)=> ExStoreDetail(
                      storeModel: storeList[index],
                    )));
              },
            ),
          );
        },
      ),
    );
  }
}