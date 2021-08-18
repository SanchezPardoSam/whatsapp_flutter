import 'package:flutter/material.dart';
import 'package:whatsapp_flutter/model/CallItems.dart';
import 'package:whatsapp_flutter/model/CallModel.dart';

class CallList extends StatelessWidget {
  final List<CallModel> _call;
  CallList(this._call);

  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: _buildCall(),
    );
  }

  List<CallItems> _buildCall() {
    return _call.map((e) => new CallItems(e)).toList();
  }
}
