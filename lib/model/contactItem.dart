import 'package:flutter/material.dart';
import 'package:whatsapp_flutter/model/ContactModel.dart';

class ContactItem extends StatelessWidget {
  final ContactModel _contact;
  ContactItem(this._contact);

  @override
  Widget build(BuildContext context) {
    return new ListTile(
      title: new Text(_contact.nombre),
      leading: new CircleAvatar(
        child: new Text(_contact.nombre[0]),
      ),
      subtitle: new Text(_contact.sms),
      trailing: new Text(_contact.hora),
    );
  }
}
