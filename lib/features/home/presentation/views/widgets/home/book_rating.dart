import 'package:bookly/core/resources/colors.dart';
import 'package:bookly/core/resources/fonts.dart';
import 'package:bookly/core/resources/strings.dart';
import 'package:bookly/core/resources/values.dart';
import 'package:bookly/core/widget/default_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class BookRating extends StatelessWidget {
  const BookRating({Key? key,  this.mainAxisAlignment=MainAxisAlignment.start, required this.rating, required this.count}) : super(key: key);
final MainAxisAlignment mainAxisAlignment;
final int rating;
final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:mainAxisAlignment,
      children: [

        Icon(
          FontAwesomeIcons.solidStar,
          color: ColorManager.starColor,
          size: Sized.s2 + Sized.sh3,
        ),
        SizedBox(
          width: Sized.s1,
        ),
        DefaultText(
          text: "$rating",
          textStyle: TextStyles.textStyle16
              .copyWith(fontWeight: FontWeightManager.semiBold),
        ),
        SizedBox(
          width: Sized.s1,
        ),
        Opacity(
          opacity: .5,
          child: DefaultText(
            text: "($count)",
            textStyle: TextStyles.textStyle14,
          ),
        )
      ],
    );
  }
}
