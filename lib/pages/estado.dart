import 'package:flutter/material.dart';
import 'package:whatsapp_flutter/model/statusModel.dart';

class Estados extends StatefulWidget {
  Estados({Key? key}) : super(key: key);

  @override
  _EstadosState createState() => _EstadosState();
}

class _EstadosState extends State<Estados> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView(
        children: <Widget>[
          new ListTile(
            leading: new CircleAvatar(
              backgroundImage: NetworkImage(perfil.imgURL),
              foregroundColor: Theme.of(context).accentColor,
              backgroundColor: Colors.grey,
            ),
            title: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(
                  perfil.nombre,
                  style: new TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            subtitle: new Row(
              children: <Widget>[
                new Text(
                  perfil.hora,
                  style: new TextStyle(fontSize: 14.0, color: Colors.grey),
                )
              ],
            ),
          ),          
          new Text(
            "   Vistos",
            style: new TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor),
          ),
          new ListTile(
                  leading: new CircleAvatar(
                    backgroundImage: NetworkImage(status[0].imgURL),
                    foregroundColor: Theme.of(context).accentColor,
                    backgroundColor: Colors.grey,
                  ),
                  title: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Text(
                        status[0].nombre,
                        style: new TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  subtitle: new Row(
                    children: <Widget>[
                      new Text(
                        status[0].hora,
                        style:
                            new TextStyle(fontSize: 14.0, color: Colors.grey),
                      )
                    ],
                  ),
                ),
                new Divider(),
                new ListTile(
                  leading: new CircleAvatar(
                    backgroundImage: NetworkImage(status[1].imgURL),
                    foregroundColor: Theme.of(context).accentColor,
                    backgroundColor: Colors.grey,
                  ),
                  title: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Text(
                        status[1].nombre,
                        style: new TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  subtitle: new Row(
                    children: <Widget>[
                      new Text(
                        status[1].hora,
                        style:
                            new TextStyle(fontSize: 14.0, color: Colors.grey),
                      )
                    ],
                  ),
                ),
                new Divider(),
                new ListTile(
                  leading: new CircleAvatar(
                    backgroundImage: NetworkImage(status[2].imgURL),
                    foregroundColor: Theme.of(context).accentColor,
                    backgroundColor: Colors.grey,
                  ),
                  title: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Text(
                        status[2].nombre,
                        style: new TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  subtitle: new Row(
                    children: <Widget>[
                      new Text(
                        status[2].hora,
                        style:
                            new TextStyle(fontSize: 14.0, color: Colors.grey),
                      )
                    ],
                  ),
                ),
        ],
      ),
    );
    /* 
    ); */
  }
}
