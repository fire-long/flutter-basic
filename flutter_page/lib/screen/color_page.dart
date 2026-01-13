import 'package:flutter/material.dart';

class ColorPage extends StatelessWidget {
  const ColorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              //routeName의 이름은 MaterialApp에 routes에 작성된 이름 작성!
              Navigator.pushNamed(context, "/red");
            },
                child: Text('move to red page')),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, "/blue");

            }, child: Text('move to blue page')),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, "/green");
            }, child: Text('move to green page'))

          ],
        ),
      ),
    );
  }
}