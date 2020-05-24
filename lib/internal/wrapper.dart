import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class ImageLoader extends StatelessWidget {
  final String url;
  final double imgRadius;
  final double size ;
  ImageLoader({this.url, this.imgRadius, this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(imgRadius)),
        child: FadeInImage(
          fit: BoxFit.cover,
          image: NetworkImage(url),
          placeholder: AssetImage(placeHolder),
        ),
      ),
    );
  }
}
