import 'package:bookly/core/resources/colors.dart';
import 'package:bookly/core/resources/fonts.dart';
import 'package:bookly/core/resources/strings.dart';
import 'package:bookly/core/resources/values.dart';
import 'package:bookly/core/widget/default_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class BookRating extends StatelessWidget {
  const BookRating({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DefaultText(
          text: Strings.price,
          textStyle: TextStyles.textStyle18
              .copyWith(fontWeight: FontWeightManager.semiBold),
        ),
        DefaultText(
          text: " €",
          textStyle: TextStyles.textStyle16
              .copyWith(fontWeight: FontWeightManager.bold),
        ),
        const Spacer(),
        Icon(
          FontAwesomeIcons.solidStar,
          color: ColorManager.starColor,
          size: Sized.s2 + Sized.sh3,
        ),
        SizedBox(
          width: Sized.s1,
        ),
        DefaultText(
          text: Strings.rate,
          textStyle: TextStyles.textStyle16
              .copyWith(fontWeight: FontWeightManager.semiBold),
        ),
        SizedBox(
          width: Sized.s1,
        ),
        DefaultText(
          text: "(${Strings.download})",
          textStyle: TextStyles.textStyle14.copyWith(color: ColorManager.grey),
        )
      ],
    );
  }
}
