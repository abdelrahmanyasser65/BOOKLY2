import 'package:bookly/core/resources/colors.dart';
import 'package:bookly/core/resources/strings.dart';
import 'package:bookly/core/resources/values.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: ColorManager.grey,
      decoration: InputDecoration(
        hintText: Strings.search,
        suffixIcon: IconButton(
          icon: Opacity(
              opacity: .8,
              child:  Icon(FontAwesomeIcons.magnifyingGlass,
                color: ColorManager.grey,
              )),
          onPressed: (){},
        ),
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),

      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
            color: ColorManager.white,
            width: Sized.sh1
        )
    );
  }
}

