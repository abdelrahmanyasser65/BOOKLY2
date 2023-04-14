import 'package:bookly/core/resources/values.dart';
import 'package:bookly/features/home/presentation/views/widgets/home/book_list_view_item.dart';
import 'package:flutter/material.dart';
class SearchResultListView extends StatelessWidget {
  const SearchResultListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only( bottom: Sized.s2),
      itemCount: 10,
      physics:const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return const BookListViewItem();
      },
    );
  }
}

