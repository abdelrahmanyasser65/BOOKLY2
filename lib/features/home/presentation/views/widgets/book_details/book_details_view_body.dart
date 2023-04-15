import 'package:bookly/features/home/data/models/BookModel.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_details/first_side_book_details.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_details/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key, required this.bookModel}) : super(key: key);
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              FirstSideBookDetails(
                bookModel: bookModel,
              ),
             const SimilarBooksListView(),
            ],
          ),
        )
      ],
    );
  }
}
