import 'package:bookly/core/resources/colors.dart';
import 'package:bookly/core/resources/fonts.dart';
import 'package:flutter/cupertino.dart';

abstract class TextStyles{
  static TextStyle titleMedium=TextStyle(
    fontSize: FontSized.fs16,
    fontWeight: FontWeightManager.semiBold,
    color: ColorManager.white,

  );
}