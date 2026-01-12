import 'package:flutter/material.dart';

class ExHeart extends StatelessWidget {
  const ExHeart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
            children: [
              Icon(Icons.favorite_border_outlined, size: 100,),
              Positioned(
                right: 0,
                top: 10,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle
                  ),
                ),
              )
            ],
          )
      ),
    );
  }
}
