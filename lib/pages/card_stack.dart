import 'package:flutter/material.dart';
import 'dart:ui';
import 'lake.dart';

class CardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = window.physicalSize.width / window.devicePixelRatio;
    var stack = Stack(
      children: <Widget>[
        Image.network(
          "https://cdn.pixabay.com/photo/2016/02/18/20/02/seljalandsfoss-1207955_960_720.jpg",
          fit:BoxFit.cover
        ),
        Container(
          margin: EdgeInsets.fromLTRB(10, 30, 0, 0),
          child: IconButton(
            iconSize: 24,
            icon: Icon(
              Icons.arrow_back,
              color:Colors.white,
            ),
            onPressed: backClicked(context)
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(width - 24 - 16 - 20 - 5 - 24 -16, 30, 0, 0),
          child: IconButton(
            icon: Icon(
              Icons.edit,
              color:Colors.white,
            ),
            onPressed: backClicked(context)
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(width - 24 - 16 - 20, 30, 0, 0),
          child: IconButton(
            icon: Icon(
              Icons.more_vert,
              color:Colors.white,
            ),
            onPressed: backClicked(context)
          ),
        ),
      ],
    );
    return MaterialApp (
      title: "stack",
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text(
        //     "stack"
        //   ),
        // ),
        body: stack,
      ),
    );
  }
  backClicked (BuildContext context) {
   
  }
}