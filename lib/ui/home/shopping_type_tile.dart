import 'package:cached_network_image/cached_network_image.dart';
import 'package:eznior/internal/constants.dart';
import 'package:eznior/internal/wrapper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShoppingTypeTile extends StatelessWidget {
  final String name;
  final String image;

  ShoppingTypeTile({@required this.name, @required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ImageLoader(url: image, imgRadius: 90, size: 90),
          SizedBox(height: 10),
          Text(
            name ,
            style: TextStyle(
              color: Colors.grey[900],
              fontSize: 10
            ),
          )
        ],
      ),
    );
  }
}
