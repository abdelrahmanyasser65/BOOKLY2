import 'package:bookly/core/functions/launch_url.dart';
import 'package:bookly/core/resources/colors.dart';
import 'package:bookly/core/widget/custom_button.dart';
import 'package:bookly/features/home/data/models/BookModel.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class DetailsAction extends StatelessWidget {
  const DetailsAction({Key? key, required this.bookModel}) : super(key: key);
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomButton(
          text: "Free",
          backGroundColor: ColorManager.white,
          textColor: ColorManager.black,
          borderRadius:const BorderRadius.only(
            topLeft: Radius.circular(15),
            bottomLeft: Radius.circular(15),
          ),
        ),),
        Expanded(child: CustomButton(
          onPressed: (){
          launchCustomUrl(context, bookModel.volumeInfo.previewLink!);
          },
          text:getText(bookModel),
          fontSize: 14.sp,
          backGroundColor: ColorManager.buttonColor,
          textColor: ColorManager.white,
          borderRadius:const BorderRadius.only(
            topRight: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
        ),),
      ],
    );
  }

 String getText(BookModel bookModel) {
    if(bookModel.volumeInfo.previewLink==null){
      return "Not Available";
    }else{
      return "Preview";
    }
 }
}
