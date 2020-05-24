import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class ImageLoader extends StatelessWidget {
  final String url;
  final double imgRadius;
  final double height;

  final double width;

  final bool isNetwork;

  ImageLoader(
      {this.url, this.imgRadius, this.width, this.height, this.isNetwork});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(imgRadius)),
        child: FadeInImage(
          fit: BoxFit.cover,
          image: isNetwork ? NetworkImage(url) : AssetImage(url),
          placeholder: AssetImage(placeHolder),
        ),
      ),
    );
  }
}
