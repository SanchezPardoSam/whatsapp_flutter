import 'package:whatsapp_flutter/pages/chat_screen.dart';

class ContactModel {
  String nombre;
  String sms;
  String hora;
  String imgURL;
  List<ChatMessage> _messages = <ChatMessage>[];
  ContactModel(this.nombre, this.sms, this.hora, this.imgURL);
  void setMessages(List<ChatMessage> _messages) {
    this._messages = _messages;
  }

  List<ChatMessage> getMesages() {
    return this._messages;
  }
}

List<ContactModel> messageData = [
  ContactModel("Mark Zuckerberg", "Talk business", "11:08 pm",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/1/18/Mark_Zuckerberg_F8_2019_Keynote_%2832830578717%29_%28cropped%29.jpg/375px-Mark_Zuckerberg_F8_2019_Keynote_%2832830578717%29_%28cropped%29.jpg"),
  ContactModel("Bill Gates", "Hi Sam", "11:11 pm",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/Bill_Gates_2017_%28cropped%29.jpg/330px-Bill_Gates_2017_%28cropped%29.jpg"),
  ContactModel("Elon Musk", "hello sam, are you available?", "11:30 pm",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ed/Elon_Musk_Royal_Society.jpg/330px-Elon_Musk_Royal_Society.jpg"),
  ContactModel("Andy", "Hola", "11:08 pm",
      "https://lh3.googleusercontent.com/a-/AOh14Ggj6KNM4W0lM6e16QGd0XU8fcp1aWpVvZ_wWXoHlA=s80-p-k-rw-no"),
  ContactModel("Fio", "Saaaam", "11:11 pm",
      "https://lh3.googleusercontent.com/a-/AOh14GieK-KztvQd3QUJjmVhMahdYeobxuk4Dp51Alr2vA=s80-p-k-rw-no"),
  ContactModel("Javier", "Hola", "11:30 pm",
      "https://lh3.googleusercontent.com/a-/AOh14GhiqrMBbEOe18WVaKHTSACl2mpCGRYBmFWasw67rA=s80-p-k-rw-no"),
  ContactModel("Ing. Edwin", "Quieres trabajar para la NASA", "11:30 pm",
      "https://lh3.googleusercontent.com/a-/AOh14GiB4B-1SYDwKX3R32MOIg41vn3KhGgtVzc2ZrhxlQ=s80-p-k-rw-no"),
];
