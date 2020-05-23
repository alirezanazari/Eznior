import 'package:eznior/internal/constants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            GestureDetector(
              onTap: (){},
              child: Icon(
                    Icons.sort ,
                  color: Colors.black,
                ),
            ),
            SizedBox(width: 16),
            Text(
              appName ,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20 ,
                fontFamily: toolbarFont
              ),
            )
          ],
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: GestureDetector(
              onTap: (){},
              child: Icon(
                Icons.shopping_basket,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }

}
