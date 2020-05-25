import 'package:flutter/material.dart';

class CustomDropDown extends StatefulWidget {
  final double width;
  final String title;
  final int selected ;
  final List<String> items;
  final Function(String value) result;

  CustomDropDown({this.width, this.title, this.items, this.selected, this.result});

  @override
  _CustomDropDownState createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  String _selected;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(widget.title, style: TextStyle(color: Colors.grey, fontSize: 12)),
        SizedBox(height: 6),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 8),
          height: 35,
          width: widget.width,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.all(Radius.circular(6)),
          ),
          child: DropdownButton(
            isExpanded: true,
            icon: Icon(Icons.keyboard_arrow_down, size: 14),
            items: widget.items.map((item) {
              return DropdownMenuItem<String>(
                  child: Text(item, style: TextStyle(fontSize: 12)),
                  value: item);
            }).toList(),
            onChanged: (value) {
              setState(() {
                _selected = value;
                widget.result(value);
              });
            },
            value: _selected ?? widget.items[widget.selected ?? 0],
          ),
        ),
      ],
    );
  }
}
