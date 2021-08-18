import 'package:whatsapp_flutter/model/ContactModel.dart';

class StatusModel {
  String nombre;
  String imgURL;
  String hora;

  StatusModel(this.nombre, this.imgURL, this.hora);
}

StatusModel perfil = new StatusModel(
    "Mi estado",
    "https://lh3.googleusercontent.com/ogw/ADea4I6EwN4XdYYX8nJNYRkPdl0OPdCtgKxDAfB1g-P2_g=s32-c-mo",
    "Añade una actualización");

List<StatusModel> status = [
  new StatusModel(messageData[0].nombre, messageData[0].imgURL, "Hoy, 3:10 PM"),
  new StatusModel(messageData[1].nombre, messageData[1].imgURL, "Hoy, 3:10 PM"),
  new StatusModel(messageData[2].nombre, messageData[2].imgURL, "Hoy, 4:20 PM"),
];
