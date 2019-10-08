import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:whatsappui_clone/pages/call_screen.dart';
import 'package:whatsappui_clone/pages/camera_screen.dart';
import 'package:whatsappui_clone/pages/chat_screen.dart';
import 'package:whatsappui_clone/pages/status_screen.dart';

class WhatsAppHome extends StatefulWidget {
  final List<CameraDescription> cameras;

  WhatsAppHome({this.cameras});

  @override
  _WhatsAppHomeState createState() =>  _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome> 
  with SingleTickerProviderStateMixin {

  TabController _tabController;
  bool showFab = true;

  @override
  void initState() {
    super.initState();
    _tabController =new TabController(initialIndex: 1, length: 4, vsync: this);
    _tabController.addListener(() {
      if (_tabController.index == 1) {
        showFab = true;
      } else {
        showFab = false;
      }
      setState(() {
        
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("WhatsApp"),
        elevation: 0.7,
        actions: <Widget>[
          new Icon(Icons.search),
          new Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
          ),
          new Icon(Icons.more_vert)
        ],
        bottom: new TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.camera_alt),),
            new Tab(text: "CHATS"),
            new Tab(text: "STATUS"),
            new Tab(text: "CALLS")
          ],
        ),
      ),
    
     
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          CameraScreen(widget.cameras),
          ChatScreen(),
          StatusScreen(),
          CallsScreen(),
        ],
      ),
      floatingActionButton: showFab ? FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: new Icon(Icons.message, color: Colors.white ,),
        onPressed: ()=> print("open chats"),
      )
      : null,
    );
  }
}