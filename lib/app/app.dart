import 'package:bookly/core/app_router.dart';
import 'package:bookly/core/resources/service_locator.dart';
import 'package:bookly/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/features/home/presentation/view_model/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/view_model/featured_newset_books/newset_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class BooklyApp extends StatelessWidget {
  const BooklyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context,s,d){
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context)=>FeaturedBooksCubit(
                getIt.get<HomeRepoImpl>()
              )..fetchFeaturedBooks(),
            ),
            BlocProvider(
              create: (context)=>NewsetBooksCubit(
                getIt.get<HomeRepoImpl>()
              )..fetchNewSetBooks(),
            ),
          ],
          child: MaterialApp.router(
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
          ),
        );
      },
    );
  }
}
