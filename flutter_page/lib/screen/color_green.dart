import 'package:flutter/material.dart';

class ColorGreen extends StatelessWidget {
  const ColorGreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
        ),
        body: Container(
            color: Colors.green
        )
    );
  }
}
