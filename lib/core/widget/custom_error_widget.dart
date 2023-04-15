import 'package:bookly/core/resources/fonts.dart';
import 'package:bookly/core/resources/values.dart';
import 'package:flutter/material.dart';
class CustomError extends StatelessWidget {
  const CustomError({Key? key, required this.errorMessage}) : super(key: key);
final String errorMessage;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Sized.s2
      ),
      child: Text(errorMessage,
      style: TextStyles.textStyle16,
        textAlign: TextAlign.center,
      ),
    );
  }
}
