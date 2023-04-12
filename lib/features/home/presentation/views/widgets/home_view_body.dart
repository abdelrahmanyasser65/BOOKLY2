import 'package:bookly/core/resources/colors.dart';
import 'package:bookly/core/resources/constants.dart';
import 'package:bookly/core/resources/fonts.dart';
import 'package:bookly/core/resources/images.dart';
import 'package:bookly/core/resources/strings.dart';
import 'package:bookly/core/resources/values.dart';
import 'package:bookly/core/widget/default_text.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:bookly/features/home/presentation/views/widgets/features_best_seller.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:const [
         CustomAppBar(),
         FeaturedBooksListView(),
        FeaturesBestSeller(),
        BestSellerListViewItem(),
      ],
    );
  }
}
