import 'package:flutter/material.dart';

class Lake extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    //在方法里面还能定义方法
    Widget buildIcon(IconData iconData,String text) {
    Color color = Theme.of(context).primaryColor;
    Widget widget = Column(
      children: <Widget>[
        Icon(
          iconData,
          color: color,
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 8,
          ),
        ),  
        Text(
          text,
          style: TextStyle(
            color: color
          ),
        )
      ],
    );
    return widget;
  }
    Widget title = Container(
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
        top: 20,
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      "Oeschinen Lake Campground",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                      ),
                      )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(
                    "Kandersteg,Swithland",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[500]
                    ),
                    )
                  ],
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: FavoriteWidget()
          )
        ], 
      ),
    );

    Widget buttons = Container(
      padding: EdgeInsets.only(
        top: 20
      ),
      child: Row(
          children: <Widget>[
            Expanded(
          
            child: buildIcon(Icons.phone, "CALL"),
          ),
          Expanded(
            
            child: buildIcon(Icons.router, "ROUTE"), 
          ),
          Expanded(
            
            child: buildIcon(Icons.share, "SHARE")
          )
            ],
        ),
    );

  Widget textSection = Container(
    padding: EdgeInsets.only(
      top: 20,
      left: 20,
      right: 20
    ),
    child: Text(
      '''
Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.
      ''',
      style: TextStyle(
        fontSize: 12,
      ),
      softWrap: true,
    ),
  );
    return MaterialApp(
      title: "demo1",
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "demo1",
            textDirection: TextDirection.ltr,
            ),
            // backgroundColor: Colors.red,
        ),
      body: ListView(
        children: <Widget>[
          Image.network(
            "https://raw.githubusercontent.com/flutter/website/master/examples/layout/lakes/interactive/images/lake.jpg",
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          title,
          buttons,
          textSection
        ],
      ),
      ),
    );
  }
}
class FavoriteWidget extends StatefulWidget {
  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState();
  
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  int _count = 41;
  bool _isfavotite = true;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(
            left: 20
          ),
        ),
       Container(
         padding: EdgeInsets.only(
           left: 5
         ),
         child: IconButton(
          icon: Icon(
            Icons.star,
            color: Colors.redAccent,
          ),
          onPressed: _toggleAction
        ),
       ),
        Text(
         "$_count"
       )
      ],
    );
  }
  _toggleAction() {
    setState(() {
      if (_isfavotite) {
      _count --;
    }else {
      _count ++;
    }
    _isfavotite = !_isfavotite;
    });
  }
}