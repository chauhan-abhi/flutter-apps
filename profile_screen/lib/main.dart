import 'package:flutter/material.dart';
import 'ProfileConstants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 
  @override
  Widget build(BuildContext context) {
  return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              buildProfileImageAvatar(),
              buildDisplayName(),
              buildLocationWidget(),
              buildDescriptionWidget(),
              buildFollowersWidget(), 
              SizedBox(height: 25.0),   
              buildGalleryListWidget(),
            ],
          )
        ],
      ),
    );
  }

  Widget buildProfileImageAvatar() {
    return Padding(
                padding: EdgeInsets.only(
                  left:   20.0,
                  right:  20.0, 
                  top:    20.0, 
                  bottom: 20.0
                  ),
                child: Container(
                  height: 50.0,
                  width:  50.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/abhijeet.jpg'
                        ),
                    fit: BoxFit.cover
                    )
                  ),
                ),
              );
  }

Widget buildDisplayName() {
  return Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                child: Text(
                    DISPLAY_NAME,
                    style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0
                  ),
                ),
              );
}

Widget buildLocationWidget() {
  return Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  LOCATION,
                  style: TextStyle(
                    fontSize: 16.0, 
                    fontFamily: 'Montserrat',
                    color: Colors.grey
                  ),
                ),
              );
}

Widget buildDescriptionWidget() {
  return Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                child: Text(
                  DESCRIPTION,
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w300,
                    fontSize: 16.0
                  ),
                ),
              );
}

Widget buildFollowersWidget() {
  return Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    buildFollowersColumn(),
                    buildFollowingColumn(),
                    buildLikesColumn(),
                  ],
                ),
              );

}

Widget buildFollowersColumn( ) {
  return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text('1521',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.red,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(FOLLOWERS,
                      style:TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.grey,
                      ),
                      )  
                      ],
                    );
}

Widget buildFollowingColumn( ) {
  return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text('142',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 18.0
                        ),
                      ),
                      Text(FOLLOWING,
                      style:TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.grey,
                      ),
                      )  
                      ],
                    );
}

Widget buildLikesColumn( ) {
  return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text('868',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.red,
                          fontWeight: FontWeight.w500,
                          fontSize: 18.0
                        ),
                      ),
                      Text(LIKES,
                      style:TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.grey,
                      ),
                      )  
                      ],
                    );
}

Widget buildGalleryListWidget() {
  return Container(
    padding: EdgeInsets.only(left: 10.0, right: 10.0),
    height: 200.0,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        buildPhotoWidget()
      ],
    ),
  );
}

Widget buildPhotoWidget() {
  
}




}



