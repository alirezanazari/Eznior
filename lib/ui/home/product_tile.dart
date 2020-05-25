import 'package:eznior/data/entity/product.dart';
import 'package:eznior/internal/wrapper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  final Product product;

  ProductTile({@required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ImageLoader(
              url: product.image,
              imgRadius: 10,
              width: 130,
              height: 145,
              isNetwork: false),
          SizedBox(height: 10),
          Text(
            product.title,
            maxLines: 1,
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 6),
          RichText(
            text: TextSpan(style: TextStyle(fontSize: 11), children: [
              TextSpan(
                text: "\$${product.discount.toString()}  ",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: "\$${product.price.toString()}",
                style: TextStyle(
                  color: Colors.grey,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              TextSpan(
                text: "  ${product.discountPercent.toString()}% OFF",
                style: TextStyle(color: Colors.brown),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
