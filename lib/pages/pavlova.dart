import 'package:flutter/material.dart';

class Pavlova extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget title = Text(
                "Straberry Pavlova",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 0.5,
                ),
              );
    Widget subtitle =Text(
                    'Pavlova is a meringue-based dessert named after the Russian ballerina'
                'Anna Pavlova. Pavlova features a crisp crust and soft, light inside,topped'
                'with fruit and whipped cream.',
                
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Georgia',
                ),
              );
    Widget stars = Container(
      child: Row(
        children: <Widget>[
          Icon(
            Icons.star,
            color: Colors.black,
          ),
          Icon(
            Icons.star,
            color: Colors.black,
          ),
          Icon(
            Icons.star,
            color: Colors.black,
          ),
          Icon(
            Icons.star,
            color: Colors.black,
          ),
          Icon(
            Icons.star,
            color: Colors.black,
          )

        ],
      ),
    );

    Widget  ratings = Container(
      padding: EdgeInsets.only(
        top: 10
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          stars,
          Text(
            "170 Reviews",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontFamily: 'Roboto',
              letterSpacing: 0.5,
              fontSize: 20,
            ),
          )
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;
    Widget iconList = Container(
      padding: EdgeInsets.only(
        top: 10
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          buildIcons(Icons.kitchen, "PREP", "25 min", color),
          buildIcons(Icons.timer, "COOK", "1 hr", color),
          buildIcons(Icons.restaurant, "FEEDS", "4-6", color),
        ],
    ),
    );
    Widget leftColumn = Container(
      width: 200,
      child: Column(
        children: <Widget>[
          title,
          subtitle,
          ratings,
          iconList
        ],
      ),
    );


    Widget image = Image.network(
      "https://cdn.pixabay.com/photo/2016/06/20/23/50/mixed-berries-1470228_960_720.jpg",
      fit: BoxFit.cover,
    );
         
    return MaterialApp(
      title: "Pavlova",
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Pavlova"
          ),
        ),
        body: Center(
        child: Container(
          margin: EdgeInsets.fromLTRB(0, 40, 0, 30),
          height: 600,
          child: Card(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 440,
                  child: leftColumn,
                ),
                image,
              ],
            ),
          ),
        ),
      ),
      ),
    );
  }
  
  Widget buildIcons(IconData iconData,String title,String subTitle,Color color) {
    Widget iconItem = Column(
      children: <Widget>[
        Icon(
          iconData,
          color: color,
        ),
        Container (
          padding: EdgeInsets.only(
            top: 4
          ),
          child: Text(
            title,
            style: TextStyle(
              color: color
            ),          
          ),
        ),
        new Container(
          padding: EdgeInsets.only(
            top: 6
          ),
          child: Text(
            subTitle,
            style:TextStyle(
              color:color
            )
          ),
        )
      ],
    );
    return iconItem;
  }
}