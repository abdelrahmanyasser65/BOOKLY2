import 'package:bookly/core/resources/values.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_details/custom_book_details_app_bar.dart';
import 'package:flutter/material.dart';
class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Sized.s4,
      ),
      child: Column(
        children:const [
          CustomBookDetailsAppBar()
        ],
      ),
    );
  }
}

