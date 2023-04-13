import 'package:bookly/core/app_router.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class BooklyApp extends StatelessWidget {
  const BooklyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context,s,d){
        return MaterialApp.router(
          routerConfig: AppRouter.router ,
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark(
            //useMaterial3: true
          ).copyWith(
            scaffoldBackgroundColor:const Color(0xff100B20),
            textTheme: GoogleFonts.montserratTextTheme(
              ThemeData.dark().textTheme,
            ),
          ),
        );
      },
    );
  }
}
