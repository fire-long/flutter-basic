import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class ExAnimated extends StatelessWidget {
  const ExAnimated({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SizedBox(
            width: 250.0,
            child: DefaultTextStyle(
              style: const TextStyle(
                color: Colors.black,
                fontSize: 60.0,
                fontWeight: FontWeight.bold,
              ),

              child: AnimatedTextKit(
                animatedTexts: [
                  BounceAnimatedText('Bounce!'),
                  BounceAnimatedText('Spring!'),
                  BounceAnimatedText('Jump!'),
                ],
                onTap: () {
                  print("Tap Event");
                },
              ),
            ),
          )
      )
    );
  }
}
