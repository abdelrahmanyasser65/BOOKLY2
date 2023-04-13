import 'package:bookly/features/home/presentation/views/book_details_view.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:bookly/features/splash/presentation/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter{
  static const rHomeView='/homeView';
  static const rBookDetailsView="/BookDetailsView";
 static final router=GoRouter(
      routes: [
        GoRoute(
          path: '/',
          builder: (context,state)=>const SplashView( ),
        ),
        GoRoute(
          path:rHomeView ,
          builder: (context,state)=>const HomeView(),
        ),
        GoRoute(
          path:rBookDetailsView ,
          builder: (context,state)=>const BookDetailsView(),
        ),
      ]
  );
}