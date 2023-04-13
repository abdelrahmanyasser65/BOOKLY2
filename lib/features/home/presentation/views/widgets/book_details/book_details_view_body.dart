import 'package:bookly/features/home/presentation/views/widgets/book_details/first_side_book_details.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_details/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: const [
              FirstSideBookDetails(),
              SimilarBooksListView(),
            ],
          ),
        )
      ],
    );
  }
}
