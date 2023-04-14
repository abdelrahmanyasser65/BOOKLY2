import 'package:bookly/core/resources/values.dart';
import 'package:bookly/features/home/presentation/views/widgets/home/custom_book_image.dart';
import 'package:flutter/material.dart';
class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: Sized.s3
      ),
      height: Sized.s17,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, index) {
          return const CustomBookImage();
        },
      ),
    );
  }
}