import 'package:eznior/data/entity/product.dart';
import 'package:eznior/internal/constants.dart';
import 'package:eznior/internal/wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ProductDetailsPage extends StatelessWidget {
  final Product product;

  ProductDetailsPage(this.product);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50))),
              child: Stack(
                children: <Widget>[
                  ImageLoader(
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                    url: product.image,
                    isNetwork: false,
                    imgRadius: 50,
                  ),
                  Positioned(
                      left: 0,
                      top: 0,
                      child: toolbarButton(icon: Icons.arrow_back)),
                  Positioned(
                      right: 0,
                      top: 0,
                      child: toolbarButton(
                          icon: Icons.favorite, color: Colors.red))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 24),
                  Text(
                    product.title,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Text(
                    loremIpsum,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        fontStyle: FontStyle.italic),
                  ),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Flexible(
                          flex: 1,
                          child: productInfoLabel(
                              title: "${product.discount}",
                              label: "Dollars",
                              icon: Icons.attach_money,
                              mainColor: Colors.pink,
                              subColor: Colors.pink[50],
                              isLineThrow: false)),
                      Flexible(
                          flex: 1,
                          child: productInfoLabel(
                              title: "${product.price}",
                              label: "Dollars",
                              icon: Icons.money_off,
                              mainColor: Colors.cyan,
                              subColor: Colors.cyan[50],
                              isLineThrow: true)),
                      Flexible(
                          flex: 1,
                          child: productInfoLabel(
                              title: "${product.discountPercent}",
                              label: "Percents",
                              icon: Icons.indeterminate_check_box,
                              mainColor: Colors.orange,
                              subColor: Colors.orange[50],
                              isLineThrow: false))
                    ],
                  ),
                  SizedBox(height: 50),
                  Container(
                    width: MediaQuery.of(context).size.width / (10 / 8),
                    height: 50,
                    child: RaisedButton(
                      child: Text("Buy Now!"),
                      color: Colors.purple[700],
                      onPressed: () {},
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget toolbarButton({IconData icon, Color color}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
      padding: EdgeInsets.all(10),
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          color: Color.fromRGBO(200, 200, 200, 180),
          borderRadius: BorderRadius.circular(13)),
      child: Icon(
        icon,
        color: color ?? Colors.white,
        size: 26,
      ),
    );
  }

  Widget productInfoLabel(
      {String title,
      String label,
      Color mainColor,
      Color subColor,
      IconData icon,
      bool isLineThrow}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
              color: subColor,
              borderRadius: BorderRadius.all(Radius.circular(15))),
          child: Icon(
            icon,
            color: mainColor,
            size: 30,
          ),
        ),
        SizedBox(height: 6),
        Text(
          title,
          style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              decoration: isLineThrow
                  ? TextDecoration.lineThrough
                  : TextDecoration.none,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 2),
        Text(
          label,
          style: TextStyle(color: Colors.grey, fontSize: 14),
        )
      ],
    );
  }
}
