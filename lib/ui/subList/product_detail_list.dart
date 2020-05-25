import 'package:eznior/data/entity/product.dart';
import 'package:eznior/internal/wrapper.dart';
import 'package:eznior/ui/subList/drop_down.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductDetailTile extends StatelessWidget {
  final ProductDetail product;

  ProductDetailTile({this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 240,
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        child: Card(
          elevation: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: ImageLoader(
                        url: product.image,
                        imgRadius: 10,
                        width: 140,
                        height: 140,
                        isNetwork: false),
                  ),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          product.title,
                          maxLines: 1,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Text(
                          product.description,
                          maxLines: 2,
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        SizedBox(height: 6),
                        Text(
                          "Art no.\t\t${product.id}",
                          maxLines: 1,
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        SizedBox(height: 6),
                        Text(
                          "Color. \t\t${product.color}",
                          maxLines: 2,
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        SizedBox(height: 10),
                        RichText(
                          text: TextSpan(
                              style: TextStyle(fontSize: 12),
                              children: [
                                TextSpan(
                                  text: "\$${product.discount.toString()}  ",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text: "\$${product.price.toString()}",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      "  ${product.discountPercent.toString()}% OFF",
                                  style: TextStyle(color: Colors.brown),
                                ),
                              ]),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CustomDropDown(
                      title: "Qty",
                      width: MediaQuery.of(context).size.width / 2.5,
                      items: ["1", "2", "3", "4"],
                      selected: 2,
                      result: (value) {},
                    ),
                    Spacer(),
                    CustomDropDown(
                      title: "Size",
                      width: MediaQuery.of(context).size.width / 2.5,
                      items: ["XXL", "XL", "L", "M"],
                      selected: 2,
                      result: (value) {},
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
