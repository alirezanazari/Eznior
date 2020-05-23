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
        elevation: 0,
        title: Row(
          children: <Widget>[
            GestureDetector(
              onTap: (){},
              child: Icon(
                    Icons.sort ,
                  color: Colors.black,
                ),
            ),
            Spacer(),
            Text(
              appName ,
              style: TextStyle(
                fontSize: 18 ,
              ),
            )
          ],
        ),
      ),
    );
  }

}
