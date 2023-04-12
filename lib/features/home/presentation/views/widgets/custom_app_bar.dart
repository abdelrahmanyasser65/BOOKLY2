import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/resources/images.dart';
import '../../../../../core/resources/values.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: Sized.s3,
          vertical: Sized.s6
      ),
      child: Row(
        children: [
          SvgPicture.asset(Images.logo,
            height: Sized.s2+Sized.sh5,
          ),
          const Spacer(),
          IconButton(
              onPressed: (){},
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