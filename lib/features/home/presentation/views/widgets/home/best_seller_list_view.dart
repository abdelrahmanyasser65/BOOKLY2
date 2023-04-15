import 'package:bookly/core/resources/values.dart';
import 'package:bookly/core/widget/custom_error_widget.dart';
import 'package:bookly/core/widget/custom_loading_indicator.dart';
import 'package:bookly/features/home/presentation/view_model/featured_newset_books/newset_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/home/book_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
      builder: (context, state) {
        if(state is NewsetBooksSuccess){
          return ListView.builder(
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.books.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return  BookListViewItem(bookModel: state.books[index],);
            },
          );
        }
        else if(state is NewsetBooksFailure){
          return CustomError(errorMessage: state.errorMessage);
        }
        else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
