import 'package:bookly/core/resources/images.dart';
import 'package:bookly/core/resources/values.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children:  [
     const   CustomAppBar(),
        Padding(
            padding: EdgeInsets.only(
              left: Sized.s2
            ),
            child:const FeaturedBooksListView()),
      ],
    );
  }
}

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return SizedBox(
     height: Sized.s25,
     child: ListView.builder(
       scrollDirection: Axis.horizontal,
       //itemCount: 4,
       itemBuilder: (context,index){
         return const CustomListViewItem();
       },
     ),
   );
  }
}


