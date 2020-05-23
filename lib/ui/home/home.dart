import 'package:carousel_slider/carousel_slider.dart';
import 'package:eznior/internal/constants.dart';
import 'package:eznior/ui/home/image_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> sliderItems = [
    "assets/images/poster1.jpg",
    "assets/images/poster2.jpg",
    "assets/images/poster5.jpg"
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildToolbar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            _buildSearch(),
            ImageSlider(
              items: sliderItems,
              onClick: (position , image){}
            )
          ],
        ),
      ),
    );
  }

  Widget _buildSearch() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16),
      padding: EdgeInsets.symmetric(horizontal: 16),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(width: 1, color: Colors.grey[400])),
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextField(
              maxLines: 1,
              cursorColor: Colors.black,
              style: TextStyle(fontSize: 14, color: Colors.black),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "What are you looking for?",
                  hintStyle: TextStyle(fontSize: 14, color: Colors.grey[400])),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.search,
              color: Colors.grey[400],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildToolbar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.sort,
              color: Colors.black,
            ),
          ),
          SizedBox(width: 16),
          Text(
            appName,
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontFamily: toolbarFont),
          )
        ],
      ),
      actions: <Widget>[
        Padding(
          padding: EdgeInsets.only(right: 16),
          child: GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.shopping_basket,
              color: Colors.black,
            ),
          ),
        )
      ],
    );
  }

}