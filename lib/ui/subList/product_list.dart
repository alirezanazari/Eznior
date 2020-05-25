import 'package:eznior/data/entity/product.dart';
import 'package:eznior/internal/constants.dart';
import 'package:eznior/ui/subList/product_detail_list.dart';
import 'package:flutter/material.dart';

class ProductListPage extends StatefulWidget {
  final int _id;
  final String _title;

  ProductListPage(this._id, this._title);

  @override
  _ProductListPageState createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  List<ProductDetail> products = new List();

  @override
  void initState() {
    super.initState();
    products.add(new ProductDetail(
        "EZ123J",
        "Beanie With Logo",
        "Men Coloured Yellow Swearshirt",
        "assets/images/poster4.jpg",
        1500,
        799,
        50,
        true,
        "White",
        12,
        "L"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "${widget._title}",
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: <Widget>[
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return ProductDetailTile(
              product: products[0],
            );
          },
        ),
      ),
    );
  }
}
