import 'package:bookly/core/resources/images.dart';
import 'package:bookly/core/resources/values.dart';
import 'package:flutter/material.dart';
class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Sized.s25,
      child: AspectRatio(
        aspectRatio: 2.7/4,
        child: Container(
          decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.red,
              image:const DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(Images.imageList),
              )),
        ),
      ),
    );
  }
}
