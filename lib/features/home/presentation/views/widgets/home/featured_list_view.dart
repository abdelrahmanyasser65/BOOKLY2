import 'package:bookly/core/app_router.dart';
import 'package:bookly/core/resources/values.dart';
import 'package:bookly/core/widget/custom_error_widget.dart';
import 'package:bookly/core/widget/custom_loading_indicator.dart';
import 'package:bookly/features/home/presentation/view_model/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/home/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(

      builder: (context, state) {
        if(state is FeaturedBooksSuccess) {
          return SizedBox(
          height: Sized.s25,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return  Padding(
                padding: EdgeInsets.only(
                  left: Sized.s2,
                  right: index==state.books.length-1?Sized.s2:0,
                ),
                child: GestureDetector(
                  onTap: (){
                    GoRouter.of(context).push(AppRouter.rBookDetailsView,extra: state.books[index]);
                  },
                  child: CustomBookImage(
                    imageUrl: state.books[index].volumeInfo.imageLinks?.thumbnail??"",
                  ),
                ),
              );
            },
          ),
        );
        }
        else if(state is FeaturedBooksFailure){
          return CustomError(errorMessage: state.errorMessage);
        }else{
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}


