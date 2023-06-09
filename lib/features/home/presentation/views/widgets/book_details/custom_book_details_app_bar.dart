import 'package:bookly/core/resources/values.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: (){
          GoRouter.of(context).pop();
        },
            icon:  Icon(Icons.close,
              size: Sized.s4,
            )
        ),
        IconButton(onPressed: (){},
            icon: Icon(Icons.shopping_cart_outlined,
              size: Sized.s4,
            )
        ),

      ],
    );
  }
}
