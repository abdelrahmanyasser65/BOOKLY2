import 'package:bookly/core/resources/fonts.dart';
import 'package:bookly/core/resources/images.dart';
import 'package:bookly/core/resources/strings.dart';
import 'package:bookly/core/resources/values.dart';
import 'package:bookly/core/widget/default_text.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomAppBar(),
        const FeaturedBooksListView(),
        Padding(
          padding: EdgeInsets.only(left: Sized.s3,
              top: Sized.s4),
          child: DefaultText(
            text: Strings.beatSeller,
            textStyle: TextStyles.textStyle18,
          ),
        ),
        BestSellerListViewItem(),
      ],
    );
  }
}
class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: Sized.s3,
        right: Sized.s3,
        top: Sized.s2
      ),
      height: Sized.s14,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5/4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.red,
                  image:const DecorationImage(
                    image: AssetImage(
                      Images.imageList
                    ),
                    fit: BoxFit.fill,
                  )
                ),
              ),
          ),
           Column()
        ],
      ),
    );
  }
}

