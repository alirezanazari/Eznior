import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageSlider extends StatefulWidget {
  final List<String> items;
  final Function(int pos , String item) onClick;

  ImageSlider({this.items, this.onClick});

  @override
  _ImageSliderState createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CarouselSlider(
          items: widget.items
              .map((item) => Container(
                    margin: EdgeInsets.all(0),
                    width: MediaQuery.of(context).size.width,
                    child: InkWell(
                      onTap: widget.onClick(widget.items.indexOf(item) , item),
                      child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          child: Image(
                            image: AssetImage(item),
                            fit: BoxFit.cover,
                          )),
                    ),
                  ))
              .toList(),
          options: CarouselOptions(
              autoPlay: false,
              enableInfiniteScroll: true,
              enlargeCenterPage: true,
              viewportFraction: 1.0,
              height: 200,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }
              ),
        ),
        SizedBox(height: 16) ,
        SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.items.map((item) {
              int index = widget.items.indexOf(item);
              return Container(
                width: 20,
                height: 4,
                margin: EdgeInsets.symmetric(horizontal: 2),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                    color:
                        _current == index ? Colors.grey[700] : Colors.grey[300]),
              );
            }).toList(),
          ),
        )
      ],
    );
  }
}
