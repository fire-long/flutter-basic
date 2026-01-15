import 'package:flutter/material.dart';
import 'package:flutter_http/model/user_model.dart';
import 'package:http/http.dart' as http;

List<UserModel> userList = [];
bool isLoading = true;

class ExUser extends StatefulWidget {
  const ExUser({super.key});

  @override
  State<ExUser> createState() => _ExUserState();
}

class _ExUserState extends State<ExUser> {
  Future<void> getUserInfo() async {
    // 0. pubspec.yaml에 http 라이브러리 추가
    // 1. 통신할 주소 작성
    String url = "https://jsonplaceholder.typicode.com/users";

    // 2. 통신
    http.Response res = await http.get(Uri.parse(url));

    // 결과값이 response(res)
    print(res.body); // 문제점 : res.body가 String으로 가져오는 중
    // String -> map
    userList = userModelFromJson(res.body);
    //isLoading==true -> progress bar
    //isLoading==false -> ListView
    setState(() {
      isLoading = false;
    });
    print(userList[0].name);

    print(res.statusCode); // 통신 상태
    // 통신 성공 : 200, 페이지 없음 : 404, 서버 에러 : 500
  }

  @override
  void initState() {
    //앱 실행시 최초 1회 실행
    super.initState();
    getUserInfo();
  }
  @override
  Widget build(BuildContext context) {
    getUserInfo();
    return Scaffold(
      appBar: AppBar(title: Text("User 출력해보기")),
      //아직 데이터가 안 오면 프로그래스바
      //데이터가 오면 ListView 그리기
      body: isLoading? Center(child: CircularProgressIndicator(),)
          :ListView.builder(
        itemCount: userList.length,
        itemBuilder: (_, index) {
          return ListTile(
            title: Text(userList[index].name),
            subtitle: Text(userList[index].email),
            leading: Icon(Icons.account_circle),
            trailing: Icon(Icons.phone_android),
          );
        },
      ),
    );
  }
}
