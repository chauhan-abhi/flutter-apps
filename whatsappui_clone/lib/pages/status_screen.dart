import 'package:flutter/material.dart';
import 'package:whatsappui_clone/pages/story_page_view.dart';

class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xfff2f2f2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Card(
            color: Colors.white,
            elevation: 0.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Stack(children: <Widget>[
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                          "https://s3.amazonaws.com/wll-community-production/images/no-avatar.png"
                    ),
                  ),
                  Positioned(
                    bottom: 0.0,
                    right: 1.0,
                    child: Container(
                      height: 20.0,
                      width: 20.0,
                      child: Icon(
                        Icons.add, 
                        color: Colors.white,
                        size: 18.0,  
                      ),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle
                      ),
                    ),
                  )
                ],
              ),
              title: Text(
                "My Status",
                style: TextStyle(
                  fontWeight: FontWeight.bold
                  ),
                ),
                subtitle: Text(
                  "Tap to add status update"
                  ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Viewed updates",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold),
              ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              color: Colors.white,
              child: ListView(
                children: <Widget>[
                ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                          "https://s3.amazonaws.com/wll-community-production/images/no-avatar.png"
                    ),
                  ),
                 
                title: Text(
                "Nick Hoe",
                style: TextStyle(
                  fontWeight: FontWeight.bold
                  ),
                ),
                subtitle: Text(
                  "Today, 08:11 PM"
                  ),
                  onTap: ()=> Navigator.push(context, MaterialPageRoute(
                    builder: (context)=> StoryPageView())),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}