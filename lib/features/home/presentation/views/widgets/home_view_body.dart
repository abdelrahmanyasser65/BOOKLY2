import 'package:bookly/core/resources/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CustomAppBar(),
      ],
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(Images.logo),
        IconButton(
            onPressed: (){},
            icon:const Icon(
                Icons.search
            )
        )
      ],
    );
  }
}