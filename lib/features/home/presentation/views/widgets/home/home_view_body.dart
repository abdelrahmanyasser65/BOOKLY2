import 'package:bookly/core/resources/values.dart';
import 'package:bookly/features/home/presentation/views/widgets/home/best_seller_list_view.dart';
import 'package:bookly/features/home/presentation/views/widgets/home/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/home/featured_list_view.dart';
import 'package:bookly/features/home/presentation/views/widgets/home/features_best_seller.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(
        bottom: Sized.s2
      ),
      physics:const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CustomAppBar(),
          FeaturedBooksListView(),
          FeaturesBestSeller(),
          BestSellerListView()
        ],
      ),
    );
    // return CustomScrollView(
    //   physics: const BouncingScrollPhysics(),
    //   slivers: [
    //     SliverToBoxAdapter(   //if list view in this box =>shrank:true
    //       child: 
    //     ),
    //     const SliverFillRemaining(   ////fill empty side and no shrank
    //       child: ,
    //     )
    //   ],
    // );
  }
}

