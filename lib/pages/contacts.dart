import 'package:flutter/material.dart';
import 'package:whatsapp_flutter/pages/listContacts.dart';  

class Contacts extends StatefulWidget {
  Contacts({Key? key}) : super(key: key);

  @override
  _ContactsState createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
       appBar: new AppBar(
         title: new Text("Seleccione contacto"),
       ),
       body: new ListContacts(),
    );
  }
}