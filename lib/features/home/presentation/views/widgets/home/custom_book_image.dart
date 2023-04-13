import 'package:bookly/core/resources/images.dart';
import 'package:bookly/core/resources/values.dart';
import 'package:flutter/material.dart';
class CustomBookImage extends StatelessWidget {
  const CustomBookImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7/4,
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal:Sized.s1
        ),
        decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.red,
            image:const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(Images.imageList),
            )),
      ),
    );
  }
}
