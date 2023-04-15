import 'package:bookly/core/app_router.dart';
import 'package:bookly/core/resources/colors.dart';
import 'package:bookly/core/resources/constants.dart';
import 'package:bookly/core/resources/fonts.dart';
import 'package:bookly/core/resources/images.dart';
import 'package:bookly/core/resources/strings.dart';
import 'package:bookly/core/resources/values.dart';
import 'package:bookly/core/widget/default_text.dart';
import 'package:bookly/features/home/data/models/BookModel.dart';
import 'package:bookly/features/home/presentation/views/widgets/home/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/home/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class BookListViewItem extends StatelessWidget {
  const BookListViewItem({Key? key, required this.bookModel}) : super(key: key);
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRouter.rBookDetailsView);
      },
      child: Container(
        margin: EdgeInsets.only(
            left: Sized.s3, right: Sized.s3,
            top: Sized.s2),
        height: Sized.s14,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomBookImage(imageUrl: bookModel.volumeInfo.imageLinks.thumbnail),
            SizedBox(
              width: Sized.s3,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: Sized.s25,
                    child: DefaultText(
                      maxLines: 2,
                      text: bookModel.volumeInfo.title!,
                      textStyle: TextStyles.textStyle20
                          .copyWith(fontFamily: AppConstants.kGtSectraFine),
                    ),
                  ),
                  SizedBox(
                    height: Sized.sh8,
                  ),
                  DefaultText(
                    text: bookModel.volumeInfo.authors[0],
                    textStyle: TextStyles.textStyle14.copyWith(
                        color: ColorManager.grey,
                        fontWeight: FontWeightManager.semiBold),
                  ),
                  SizedBox(
                    height: Sized.sh8,
                  ),
                 Row(
                   children: [
                     DefaultText(
                       text: "Free",
                       textStyle: TextStyles.textStyle18
                           .copyWith(fontWeight: FontWeightManager.semiBold),
                     ),
                     // DefaultText(
                     //   text: " €",
                     //   textStyle: TextStyles.textStyle16
                     //       .copyWith(fontWeight: FontWeightManager.bold),
                     // ),
                     const Spacer(),
                      BookRating(
                       rating: bookModel.volumeInfo.averageRating??0,
                        count: bookModel.volumeInfo.ratingsCount??0,
                     ),
                   ],
                 )

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

