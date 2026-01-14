import 'package:flutter/material.dart';

class RyanDetailPage extends StatelessWidget {
  const RyanDetailPage({super.key, required this.image, required this.name, required this.index});
  final String image;
  final String name;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${index+1}번째 라이언')),
      body: Center(
        child: Column(
          children: [
            Image.asset(image),
            SizedBox(width: 10),
            Text(name, style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
