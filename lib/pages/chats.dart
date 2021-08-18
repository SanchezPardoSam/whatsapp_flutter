import 'package:flutter/material.dart';
import 'package:whatsapp_flutter/model/ContactModel.dart';
import 'package:whatsapp_flutter/pages/chat_screen.dart';

class Chats extends StatefulWidget {
  Chats({Key? key}) : super(key: key);

  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: messageData.length,
      itemBuilder: (context, i) => new Column(
        children: <Widget>[
          new Divider(
            height: 10.0,
          ),
          new ListTile(
            leading: new CircleAvatar(
              backgroundImage: NetworkImage(messageData[i].imgURL),
            ),
            title: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(
                  messageData[i].nombre,
                  style: new TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                new Text(
                  messageData[i].hora,
                  style: new TextStyle(color: Colors.grey, fontSize: 14.0),
                ),
              ],
            ),
            subtitle: new Container(
              padding: const EdgeInsets.only(top: 5.0),
              child: new Text(
                messageData[i].sms,
                style: new TextStyle(color: Colors.grey, fontSize: 15.5),
              ),
            ),
            onTap: () {               
              var route = new MaterialPageRoute(
                  builder: (BuildContext context) => new ChatScreen(
                    messageData[i].nombre, messageData[i].imgURL, messageData[i].getMesages()
                  ));
              Navigator.of(context).push(route);
            },
          )
        ],
      ),
    );
  }
}