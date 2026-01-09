import 'package:flutter/material.dart';

class ExSized extends StatelessWidget {
  const ExSized({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Row(
            children: [
              Text("hello"),
              SizedBox(width:100,),
              Icon(Icons.favorite)
            ],
          )
      ),
    );
  }
}
