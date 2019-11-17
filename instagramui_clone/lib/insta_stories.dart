import 'package:flutter/material.dart';

class InstaStory extends StatelessWidget {

final topText = Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: <Widget>[
    Text(
      "Stories", 
      style: new TextStyle(fontWeight: FontWeight.bold)
      ),
      new Row(
        children: <Widget>[
          new Icon(Icons.play_arrow),
          new Text(
            "Watch All",
            style: TextStyle(fontWeight: FontWeight.bold)
          ),
        ],
      )

  ],
);


// can use Expanded only inside a Column or a Row as parent
final stories = Expanded(
  child: Padding(
    padding: const EdgeInsets.only(top:8.0),
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (context, index) => Stack(
        alignment: Alignment.bottomRight, // plus icon is in bottom right of avatar
        children: <Widget>[
          new Container(
            width: 60.0,
            height: 60.0,
            decoration: new BoxDecoration(
              shape: BoxShape.circle,
              image: new DecorationImage(
                fit: BoxFit.fill,
                image: new NetworkImage(
                  "https://i.pinimg.com/564x/95/d2/b5/95d2b5761c475680ef64f2366c1e26d0.jpg"
                ),
              )
            ),
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
          ),
          index == 0
           ? Positioned(
            right: 10.0,
            child: CircleAvatar(
              backgroundColor: Colors.blueAccent,
              radius: 10.0,
              child: Icon(
                Icons.add, size: 14.0, color: Colors.white,
              ),
            ),
          ): Container()
        ],
      ),
      ),
  ),
  );


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          topText,
          stories,
        ],
      ),
    );
  }
}