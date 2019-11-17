import 'package:flutter/material.dart';
import 'package:instagramui_clone/insta_stories.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InstaList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: 5, // +1 for stories
      itemBuilder: (context, index) => index == 0 ? new SizedBox(
        child: new InstaStory(),
        height: deviceSize.height*0.20,
      ) : Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildTitleBody(),
          buildImageWidget(),
          buildLikeCommentWidget(),
          buildLikedByText(),
          buildAddCommentWidget(),
          buildTimePostedWidget()
          
        ],
      ),
    );
  }

  Widget buildTitleBody() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: new DecorationImage(
                    fit: BoxFit.fill,
                    image:  NetworkImage("https://i.pinimg.com/564x/95/d2/b5/95d2b5761c475680ef64f2366c1e26d0.jpg")
                  )
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                "Wizarding World",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: null,
          )
        ],
      ),
    );
  }

  Widget buildImageWidget() {
    return Flexible(
      fit: FlexFit.loose,
      child: Image.network(
        "https://i.etsystatic.com/14967869/r/il/825457/1510241834/il_794xN.1510241834_7i6f.jpg",
        fit: BoxFit.cover,
      ),
    );
  }

  Widget buildLikedByText() {
    return Padding(padding: const EdgeInsets.symmetric(horizontal: 16.0),
    child: Text(
      "Liked by accio_abhi, hp and 560,32 others",
      style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget buildTimePostedWidget() {
    return Padding(padding: const EdgeInsets.symmetric(horizontal: 16.0),
    child: Text(
      "1 Day Ago",
      style: TextStyle(color: Colors.grey),
      ),
    );
  }

  Widget buildAddCommentWidget() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: new DecorationImage(
                    fit: BoxFit.fill,
                    image:  NetworkImage("https://i.pinimg.com/564x/95/d2/b5/95d2b5761c475680ef64f2366c1e26d0.jpg")
                  )
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Add a comment..."
                  ),
                ),
              )
        ],
      )
    ); 
  }

Widget buildLikeCommentWidget() {
  return Padding(
    padding: const EdgeInsets.all(16.0),  
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(
              FontAwesomeIcons.heart,
            ),
            SizedBox(
              width: 16.0,
            ),
            Icon(
              FontAwesomeIcons.comment,
            ),
            SizedBox(
              width: 16.0,
            ),
              Icon(
              FontAwesomeIcons.paperPlane,
            ),
            SizedBox(
              width: 16.0,
            ),
          ],
        ),
        Icon(
          FontAwesomeIcons.bookmark,
        ),
      ],
    ),
  );
  }
}