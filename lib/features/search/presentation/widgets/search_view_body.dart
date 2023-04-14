import 'package:bookly/core/resources/fonts.dart';
import 'package:bookly/core/resources/strings.dart';
import 'package:bookly/core/resources/values.dart';
import 'package:bookly/core/widget/default_text.dart';
import 'package:bookly/features/search/presentation/widgets/custom_search_text_field.dart';
import 'package:bookly/features/search/presentation/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';
class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: EdgeInsets.only(
                left: Sized.s3,
                right: Sized.s3,
                top: Sized.s3
            ),
            child:const CustomSearchTextField()),
        Padding(
          padding: EdgeInsets.only(
            left: Sized.s3,
            right: Sized.s3,
            top: Sized.s2,
            bottom: Sized.s1
          ),
          child: DefaultText(
            text: Strings.searchResult,
            textStyle: TextStyles.textStyle18,
          ),
        ),
        const Expanded(child: SearchResultListView())
      ],
    );
  }
}

