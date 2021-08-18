import 'package:flutter/material.dart';
import 'package:whatsapp_flutter/model/CallList.dart';
import 'package:whatsapp_flutter/model/CallModel.dart';

class Llamadas extends StatelessWidget {
  const Llamadas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new CallList(_buildList()),
    );
  }

  List<CallModel> _buildList() {
    return <CallModel>[
      CallModel("Andy", "Ayer 6:45 pm", "https://lh3.googleusercontent.com/a-/AOh14Ggj6KNM4W0lM6e16QGd0XU8fcp1aWpVvZ_wWXoHlA=s80-p-k-rw-no"),
      CallModel("Fiorella", "Ayer 7:45 pm", "https://lh3.googleusercontent.com/a-/AOh14GieK-KztvQd3QUJjmVhMahdYeobxuk4Dp51Alr2vA=s80-p-k-rw-no"),
      CallModel("Javier", "Ayer 8:45 pm", "https://lh3.googleusercontent.com/a-/AOh14GhiqrMBbEOe18WVaKHTSACl2mpCGRYBmFWasw67rA=s80-p-k-rw-no"),
      CallModel("Fernando", "Ayer 9:45 pm", "https://lh3.googleusercontent.com/a-/AOh14Gjht6qhlvujQ8uDaDegJ_wpZbK2Wzbqx0c3yFYH=s80-p-k-rw-no"),
      CallModel("Andy", "Ayer 6:45 pm", "https://lh3.googleusercontent.com/a-/AOh14Ggj6KNM4W0lM6e16QGd0XU8fcp1aWpVvZ_wWXoHlA=s80-p-k-rw-no"),
      CallModel("Fiorella", "Ayer 7:45 pm", "https://lh3.googleusercontent.com/a-/AOh14GieK-KztvQd3QUJjmVhMahdYeobxuk4Dp51Alr2vA=s80-p-k-rw-no"),
      CallModel("Javier", "Ayer 8:45 pm", "https://lh3.googleusercontent.com/a-/AOh14GhiqrMBbEOe18WVaKHTSACl2mpCGRYBmFWasw67rA=s80-p-k-rw-no"),
      CallModel("Fernando", "Ayer 9:45 pm", "https://lh3.googleusercontent.com/a-/AOh14Gjht6qhlvujQ8uDaDegJ_wpZbK2Wzbqx0c3yFYH=s80-p-k-rw-no"),
    ];
  }
}
