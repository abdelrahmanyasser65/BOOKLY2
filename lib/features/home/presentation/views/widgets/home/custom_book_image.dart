import 'package:bookly/core/resources/colors.dart';
import 'package:bookly/core/resources/values.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
class CustomBookImage extends StatelessWidget {
  const CustomBookImage({Key? key, required this.imageUrl}) : super(key: key);
final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.7/4,
        child:CachedNetworkImage(
          imageUrl:imageUrl,
          fit: BoxFit.fill,
          errorWidget: (context,url,error)=>Container(
            color: ColorManager.grey.withOpacity(0.3),
            child: Icon(Icons.error,size: Sized.s6,),
          ),
        ) ,
      ),
    );
  }
}
// Container(
// margin: EdgeInsets.symmetric(
// horizontal:Sized.s1
// ),
// decoration:  BoxDecoration(
// borderRadius: BorderRadius.circular(16),
// color: Colors.red,
// image: DecorationImage(
// fit: BoxFit.fill,
// image: NetworkImage(
// imageUrl
// ),
// )),
// )