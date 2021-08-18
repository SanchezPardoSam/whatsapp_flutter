import 'package:flutter/material.dart';
import 'package:whatsapp_flutter/model/CallModel.dart';

class CallItems extends StatelessWidget {
  final CallModel _call;

  CallItems(this._call);

  @override
  Widget build(BuildContext context) {
    return new ListTile(
      title: new Text(_call.nombre),
      leading: new CircleAvatar(
        backgroundImage: NetworkImage(_call.img),
      ),
      subtitle: new Text(_call.subTitle),
      trailing: new Icon(Icons.phone, color: Colors.green,),
    );
  }
}
