import 'package:flutter/material.dart';
import 'package:whatsapp_flutter/model/ContactModel.dart';

class ChatScreen extends StatefulWidget {
  final String name, imgURL;
  List<ChatMessage> _messages = <ChatMessage>[];
  ChatScreen(this.name, this.imgURL, this._messages);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> with TickerProviderStateMixin {
  final TextEditingController _textController = new TextEditingController();
  
  bool _isTyped = false;
  //_ChatScreenState(this._messages);
  void _handledSubmit(String text) {
    _textController.clear();
    setState(() {
      _isTyped = false;
    });
    ChatMessage message = new ChatMessage(
        text,
        new AnimationController(
          vsync: this,
          duration: new Duration(milliseconds: 700),
        ),
        widget.name,
        widget.imgURL);
    setState(() {
      widget._messages.insert(0, message);
      for (var i = 0; i < messageData.length; i++) {
        if (messageData[i].nombre == widget.name) {
          messageData[i].setMessages(widget._messages);
          messageData[i].sms = text;
        }
      }
    });
    message.animationController.forward();
    print(text);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(widget.name),
        ),
        body: new Container(
          child: new Column(
            children: <Widget>[
              new Flexible(
                  child: new ListView.builder(
                padding: const EdgeInsets.all(8.0),
                reverse: true,
                itemBuilder: (_, int index) => widget._messages[index],
                itemCount: widget._messages.length,
              )),
              new Divider(
                height: 1.0,
              ),
              new Container(
                child: _builderTextComposer(),
              )
            ],
          ),
        ));
  }

  Widget _builderTextComposer() {
    return new IconTheme(
        data: new IconThemeData(color: Theme.of(context).accentColor),
        child: new Container(
          padding: const EdgeInsets.all(8.0),
          child: new Row(
            children: <Widget>[
              new Flexible(
                child: new TextField(
                  controller: _textController,
                  onChanged: (String text) {
                    setState(() {
                      _isTyped = text.length >= 0;
                    });
                  },                  
                  decoration: new InputDecoration.collapsed(hintText: "Enviar mensaje"),
                ),
              ),
              new Container(
                child: new IconButton(
                    onPressed: _isTyped
                        ? () => _handledSubmit(_textController.text)
                        : null,
                    icon: new Icon(
                      Icons.send,
                    )),
              ),
            ],
          ),
        ));
  }
}

class ChatMessage extends StatelessWidget {
  String name, text, imgURL;
  AnimationController animationController;

  ChatMessage(this.text, this.animationController, this.name, this.imgURL);

  @override
  Widget build(BuildContext context) {
    return new SizeTransition(
      sizeFactor: new CurvedAnimation(
          parent: animationController, curve: Curves.easeOut),
      child: new Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).accentColor,
        ),
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        child: new Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Container(
              margin: const EdgeInsets.only(right: 16.0),
              child: new CircleAvatar(
                backgroundImage: NetworkImage(imgURL),
              ),
            ),
            new Expanded(
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text(
                    name,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  new Container(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: new Text(text),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
