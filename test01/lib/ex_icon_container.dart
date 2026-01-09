import 'package:flutter/material.dart';

class ExIconContainer extends StatelessWidget {
  const ExIconContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Row(
        children: [
          Container(
              decoration: BoxDecoration(
              color: Colors.green[500],
              borderRadius: BorderRadius.all(Radius.circular(40))
          ),
            margin: EdgeInsets.fromLTRB(32, 32, 0, 0),
            width: 120,
            height: 120,
            child:Icon(Icons.call, color: Colors.white, size: 80)
          ),
          Container(
            decoration:BoxDecoration(
              color:Colors.red[500],
              borderRadius: BorderRadius.all(Radius.circular(40))
            ),
              margin: EdgeInsets.fromLTRB(32, 32, 0, 0),
              width: 120,
              height: 120,
              child:Icon(Icons.camera_alt_outlined, color: Colors.white, size: 80)
          )
        ],
      ))
    );
  }
}
