import 'package:bookly/core/resources/fonts.dart';
import 'package:bookly/core/resources/strings.dart';
import 'package:bookly/core/resources/values.dart';
import 'package:bookly/core/widget/default_text.dart';
import 'package:bookly/features/home/data/models/BookModel.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_details/custom_book_details_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_details/details_action.dart';
import 'package:bookly/features/home/presentation/views/widgets/home/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/home/custom_book_image.dart';
import 'package:flutter/material.dart';
class FirstSideBookDetails extends StatelessWidget {
  const FirstSideBookDetails({Key? key, required this.bookModel}) : super(key: key);
final BookModel bookModel;
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
                  bottom: Sized.s4),
              child:  CustomBookImage(
                imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail??'',
              )),
          DefaultText(
              text: bookModel.volumeInfo.title

              , textStyle: TextStyles.textStyle30,
          textAlign:TextAlign.center,
          ),
          SizedBox(
            height: Sized.sh8,
          ),
          Opacity(
            opacity: 0.7,
            child: DefaultText(
                text: bookModel.volumeInfo.authors?[0]??"",
                textStyle: TextStyles.textStyle18.copyWith(
                  overflow: TextOverflow.ellipsis
                )),
          ),
          SizedBox(
            height: Sized.s1,
          ),
           BookRating(
            rating: bookModel.volumeInfo.averageRating??0,
            count: bookModel.volumeInfo.ratingsCount??0,
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          SizedBox(
            height: Sized.s3,
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
