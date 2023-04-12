import 'package:bookly/core/resources/values.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';
class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: Sized.s2
      ),
      height: Sized.s25,
      child: ListView.builder(
        physics:const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context,index){
          return const FeaturedListViewItem();
        },
      ),
    );
  }
}


