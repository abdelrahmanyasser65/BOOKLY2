import 'package:bookly/features/home/presentation/views/widgets/book_details/book_details_view_body.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: BookDetailsViewBody()
    );
  }
}
