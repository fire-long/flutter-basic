import 'package:flutter/material.dart';
import 'package:flutter_listview/model/ryan_model.dart';

class RyanDetailPage extends StatelessWidget {
  const RyanDetailPage({super.key, required this.rm});
  final RyanModel rm;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${rm.index+1}번째 라이언')),
      body: Center(
        child: Column(
          children: [
            Image.asset(rm.image),
            SizedBox(width: 10),
            Text(rm.name, style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
