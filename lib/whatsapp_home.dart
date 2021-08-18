import 'package:flutter/material.dart';
import 'package:whatsapp_flutter/pages/camara.dart';
import 'package:whatsapp_flutter/pages/chats.dart';
import 'package:whatsapp_flutter/pages/contacts.dart';
import 'package:whatsapp_flutter/pages/estado.dart';
import 'package:whatsapp_flutter/pages/llamadas.dart';

class WhatsAppHome extends StatefulWidget {
  WhatsAppHome({Key? key}) : super(key: key);

  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("WhatsApp"),
        actions: <Widget>[
          new IconButton(onPressed: (){}, 
          icon: new Icon(Icons.search)
          ),
          new IconButton(onPressed: (){}, 
          icon: new Icon(Icons.more_vert))
        ],
        bottom: new TabBar(
          tabs: <Widget>[
            Tab(
              icon: new Icon(Icons.camera_alt, size: 25.0,),
              iconMargin: const EdgeInsets.only(right: 1.0, left: 1.0),
            ),
            Tab(
              text: "CHATS",
              iconMargin: const EdgeInsets.only(right: 1.0, left: 1.0),
            ),
            Tab(
              text: "ESTADOS",
              iconMargin: const EdgeInsets.only(right: 1.0, left: 1.0),
            ),
            Tab(
              text: "LLAMADAS",
              iconMargin: const EdgeInsets.only(right: 1.0, left: 1.0),
            ),
          ],
          controller: controller,
        ),
      ),
      body: new TabBarView(
        children: <Widget>[
          new Camera(),
          new Chats(),
          new Estados(),
          new Llamadas(),
        ],
        controller: controller,
      ),
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: new Icon(
          Icons.message,
          color: Colors.white,
        ),
        onPressed: () {
          var route = new MaterialPageRoute(
              builder: (BuildContext context) => new Contacts());
          Navigator.of(context).push(route);
        },
      ),
    );
  }
}
