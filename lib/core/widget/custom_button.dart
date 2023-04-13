import 'package:bookly/core/resources/fonts.dart';
import 'package:bookly/core/resources/strings.dart';
import 'package:bookly/core/resources/values.dart';
import 'package:bookly/core/widget/default_text.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      required this.backGroundColor,
      required this.textColor,
       this.borderRadius,
        required this.text,
         this.fontSize})
      : super(key: key);
  final Color backGroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final String text;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Sized.s6,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor:backGroundColor,
            shape: RoundedRectangleBorder(
                borderRadius:borderRadius??BorderRadius.circular(15)
            )),
        onPressed: () {},
        child: DefaultText(
          text: text,
          textStyle: TextStyles.textStyle18.copyWith(
              color:textColor,
              fontSize: fontSize,
              fontWeight: FontWeightManager.bold,
          ),
        ),
      ),
    );
  }
}
