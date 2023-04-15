import 'package:bookly/core/resources/values.dart';
import 'package:bookly/core/widget/custom_error_widget.dart';
import 'package:bookly/core/widget/custom_loading_indicator.dart';
import 'package:bookly/features/home/presentation/view_model/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/home/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if(state is SimilarBooksSuccess){
          return SizedBox(
            height: Sized.s17,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(
                    left: index==0?Sized.s3:Sized.s2,
                    right: index==state.books.length-1?Sized.s2:0,
                  ),
                  child:  CustomBookImage(
                    imageUrl: state.books[index].volumeInfo.imageLinks?.thumbnail??'',)
                );
              },
            ),
          );
        }
        else if (state is SimilarBooksFailure){
          return CustomError(errorMessage: state.errorMessage);
        }else{
        return const  CustomLoadingIndicator();
        }
      },
    );
  }
}
