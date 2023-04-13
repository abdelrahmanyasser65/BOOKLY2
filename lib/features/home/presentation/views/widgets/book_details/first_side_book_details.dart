import 'package:bookly/core/resources/fonts.dart';
import 'package:bookly/core/resources/strings.dart';
import 'package:bookly/core/resources/values.dart';
import 'package:bookly/core/widget/default_text.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_details/custom_book_details_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_details/details_action.dart';
import 'package:bookly/features/home/presentation/views/widgets/home/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/home/custom_book_image.dart';
import 'package:flutter/material.dart';
class FirstSideBookDetails extends StatelessWidget {
  const FirstSideBookDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Sized.s4,
      ),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
              padding: EdgeInsets.only(
                  left: Sized.s8,
                  right: Sized.s8,
                  top: Sized.s2,
                  bottom: Sized.s5),
              child: const CustomBookImage()),
          DefaultText(
              text: Strings.titleBook, textStyle: TextStyles.textStyle30),
          SizedBox(
            height: Sized.sh8,
          ),
          Opacity(
            opacity: 0.7,
            child: DefaultText(
                text: Strings.subTitleBook,
                textStyle: TextStyles.textStyle18.copyWith()),
          ),
          SizedBox(
            height: Sized.s2,
          ),
          const BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          SizedBox(
            height: Sized.s4,
          ),
          const DetailsAction(),
          Padding(
            padding: EdgeInsets.only(top: Sized.s5,
                bottom: Sized.s2),
            child: Align(
              alignment: Alignment.centerLeft,
              child: DefaultText(
                text: Strings.youCanLike,
                textStyle: TextStyles.textStyle14
                    .copyWith(fontWeight: FontWeightManager.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
