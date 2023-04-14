import 'package:bookly/core/app_router.dart';
import 'package:bookly/core/resources/images.dart';
import 'package:bookly/core/resources/values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: Sized.s3,
          right: Sized.s3,
          top: Sized.s6,
        bottom: Sized.s4
      ),
      child: Row(
        children: [
          SvgPicture.asset(Images.logo,
            height: Sized.s2+Sized.sh5,
          ),
          const Spacer(),
          IconButton(
              onPressed: (){
                 GoRouter.of(context).push(AppRouter.rSearchView);
              },
              icon: Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: Sized.s3,
              )
          )
        ],
      ),
    );
  }
}