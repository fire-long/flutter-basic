import 'package:flutter/material.dart';

class ExRadio extends StatefulWidget {
  const ExRadio({super.key});

  @override
  State<ExRadio> createState() => _ExRadioState();
}

enum Gender{man, woman}

class _ExRadioState extends State<ExRadio> {
  Gender? g;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: RadioGroup(
          //radio 버튼을 그룹으로 묶는 이유: 버튼 중 택 1이므로 한 묶음으로 처리

          groupValue: g,
            onChanged: (v){
            print(v); //v=the value of the selected radio button
              setState(() {
                g = v!;//실젯값 적용
              });
            },
            child: Column(
              children: [
                RadioListTile(value: Gender.woman),
                RadioListTile(value: Gender.man)
              ],
            ))
      )
    );
  }
}
