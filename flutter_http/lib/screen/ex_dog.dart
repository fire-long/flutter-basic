import 'package:flutter/material.dart';
import 'package:flutter_http/model/dog_model.dart';
import 'package:http/http.dart' as http;

class ExDog extends StatefulWidget {
  const ExDog({super.key});

  @override
  State<ExDog> createState() => _ExDogState();
}

class _ExDogState extends State<ExDog> {
  DogModel? dogModel;
  bool isLoading = true;

  Future<void> loadDog() async {
    //0. pubspec.yaml에 http 라이브러리 추가
    //1. 통신할 주소 작성
    String url = "https://dog.ceo/api/breeds/image/random";

    //2. 통신
    http.Response res = await http.get(Uri.parse(url));

    if (res.statusCode == 200) {
      dogModel = dogModelFromJson(res.body);

      setState(() {
        isLoading = false;
      });
    } else {

    }
    // 값 확인
    print(res.body);

    print(dogModel?.message);
  }

  @override
  void initState() {
    super.initState();
    loadDog();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("강아지 사진 예제")),
      //asset: 프로젝트 내에 내장된 이미지 가져올 때
      //network: 네트워크에 있는 이미지를 가져올 때
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : Center(child: Image.network(dogModel!.message)),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          loadDog();
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}
