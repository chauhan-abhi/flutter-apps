# Flutter-Apps

- This repository contains UI clones of common apps or dribble challenges

## Sceenshots


## [WhatApp Clone](https://github.com/chauhan-abhi/flutter-apps/blob/master/whatsappui_clone/lib/)

<table>
  <tr><td> <b>Chat Sceen</b> </td></tr>
  <tr>
<td>
  <pre> 
  ListView.builder(
      itemCount: mockData.length,
      itemBuilder: (context, i) => new Column(
        children: <Widget>[
          new Divider(
            height: 10.0,
          ),
          new ListTile(
            leading: new CircleAvatar(
              foregroundColor: Theme.of(context)
                                    .primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: new NetworkImage(
              mockData[i].avatarUrl
              ),
            ),
            title: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(
                  mockData[i].name,
                  style: new TextStyle(
                  fontWeight: FontWeight.bold
                  ),
              ),
              new Text(
                mockData[i].time,
                style: new TextStyle(
                color: Colors.grey,
                fontSize: 14.0),
              ),
            ],
          ),
            subtitle: new Container(
              padding: const EdgeInsets.only(top: 5.0),
              child:  new Text(
              mockData[i].message,
              style: new TextStyle(
              color: Colors.grey,
              fontSize: 15.0),
          ),
        ),
      )
    ],
  ),
);

</td>
<td>
  <img src = "https://github.com/chauhan-abhi/flutter-apps/blob/master/screenshots/Screenshot_1570446776.png" width = 240>
</td>
</tr>
  </table>
