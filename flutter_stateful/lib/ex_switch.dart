import 'package:flutter/material.dart';

class ExSwitch extends StatefulWidget {
  const ExSwitch({super.key});

  @override
  State<ExSwitch> createState() => _ExSwitchState();
}

class _ExSwitchState extends State<ExSwitch> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Switch(
          activeThumbColor: Colors.red,
          value: isSwitched,
          onChanged: (v) {
            setState(() {
              isSwitched = v; //checkbox와 달리 v!가 아님
              //switch는 onChanged가 non nullable이어서임
            });
          },
        ),
      ),
    );
  }
}
