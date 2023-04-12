import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:sizer/sizer.dart';

class BooklyApp extends StatelessWidget {
  const BooklyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context,s,d){
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark(
            //useMaterial3: true
          ).copyWith(
            scaffoldBackgroundColor:const Color(0xff100B20),
          ),
          //home:const SplashView(),
        );
      },
    );
  }
}