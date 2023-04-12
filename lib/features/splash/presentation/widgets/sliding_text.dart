import 'package:flutter/material.dart';
import '../../../../core/resources/strings.dart';
import '../../../../core/widget/default_text.dart';
class SlidingText extends StatelessWidget {
  const SlidingText({Key? key, required this.slidingAnimation}) : super(key: key);
  final Animation<Offset>slidingAnimation;
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context,_){
          return SlideTransition(
            position:slidingAnimation ,
            child: DefaultText(
              text: Strings.readFreeBooks,
              textAlign: TextAlign.center,
            ),
          );
        });
  }
}