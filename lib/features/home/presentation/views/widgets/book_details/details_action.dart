import 'package:bookly/core/resources/colors.dart';
import 'package:bookly/core/resources/strings.dart';
import 'package:bookly/core/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class DetailsAction extends StatelessWidget {
  const DetailsAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomButton(
          text: Strings.price+Strings.bound,
          backGroundColor: ColorManager.white,
          textColor: ColorManager.black,
          borderRadius:const BorderRadius.only(
            topLeft: Radius.circular(15),
            bottomLeft: Radius.circular(15),
          ),
        ),),
        Expanded(child: CustomButton(
          text: Strings.freePreview,
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
}
