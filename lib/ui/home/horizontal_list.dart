import 'package:eznior/data/entity/product.dart';
import 'package:eznior/ui/details/details.dart';
import 'package:eznior/ui/home/product_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HorizontalProductList extends StatelessWidget {
  final String title;
  final List<Product> items;

  HorizontalProductList({this.title, this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        SizedBox(height: 16),
        Container(
          height: 210,
          child: ListView.builder(
            itemCount: items.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              ProductDetailsPage(items[index])));
                },
                child: ProductTile(
                  product: items[index],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
