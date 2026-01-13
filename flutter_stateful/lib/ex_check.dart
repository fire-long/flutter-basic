import 'package:flutter/material.dart';

class ExCheck extends StatefulWidget {
  const ExCheck({super.key});

  @override
  State<ExCheck> createState() => _ExCheckState();
}

class _ExCheckState extends State<ExCheck> {
  bool isChecked = false;
  List<bool> isCheckedList = [false, false, false];
  String hobby = "헬스";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            //value는 체크 유무
            //Checkbox == CheckboxListTile
            CheckboxListTile(
              title: Text(hobby),
              controlAffinity: ListTileControlAffinity.leading,
              value: isCheckedList[0],
              onChanged: (v) {
                print(v); // v는 !value
                //(해결책 1) isChecked도 null 허용(bool? isChecked = false;)

                //(해결책 2)v!라고 쓴 이유: onChanged의 bool?로 작성됨 -> nullable
                //하지만 isChecke는 non nullable
                setState(() {
                  isCheckedList[0] = v!;
                  //snack bar(iOS) 띄우기
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(hobby), duration: Duration(seconds: 1),)
                  );
                });
              },
            ),
            CheckboxListTile(
              title: Text("요리"),
              controlAffinity: ListTileControlAffinity.leading,
              value: isCheckedList[1],
              onChanged: (v) {
                print(v);
                setState(() {
                  isCheckedList[1] = v!;
                });
              },
            ),
            CheckboxListTile(
              title: Text("게임"),
              controlAffinity: ListTileControlAffinity.leading,
              value: isCheckedList[2],
              onChanged: (v) {
                print(v);
                setState(() {
                  isCheckedList[2] = v!;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
