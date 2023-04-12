import 'package:bookly/core/resources/fonts.dart';
import 'package:bookly/core/resources/strings.dart';
import 'package:bookly/core/resources/values.dart';
import 'package:bookly/core/widget/default_text.dart';
import 'package:flutter/material.dart';
class FeaturesBestSeller extends StatelessWidget {
  const FeaturesBestSeller({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: Sized.s3,
          top: Sized.s4),
      child: DefaultText(
        text: Strings.beatSeller,
        textStyle: TextStyles.textStyle18,
      ),
    );
  }
}
