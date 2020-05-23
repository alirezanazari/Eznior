import 'package:eznior/internal/constants.dart';
import 'package:eznior/ui/home/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(EzniorApp());

class EzniorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: mainFont
      ),
      home: HomePage(),
    );
  }
}
