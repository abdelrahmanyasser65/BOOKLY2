import 'package:flutter/material.dart';
class DefaultText extends StatelessWidget {
  const DefaultText({Key? key, required this.text,
    this.textAlign,
    this.fontSize,
    this.fontWeight,
    this.color, this.textStyle}) : super(key: key);
  final String text;
  final TextAlign ?textAlign;
  final double ?fontSize;
  final FontWeight ?fontWeight;
  final Color? color;
  final TextStyle ?textStyle;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style:textStyle ?? TextStyle(
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: color,
      ),
    );
  }
}