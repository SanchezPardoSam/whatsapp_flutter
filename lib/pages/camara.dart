import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class Camera extends StatefulWidget {
  Camera({Key? key}) : super(key: key);

  @override
  _CameraState createState() => _CameraState();
}

enum WidgetStatus { NONE, LOADING, LEADED, ERROR }

class _CameraState extends State<Camera> {
  WidgetStatus _widgetStatus = WidgetStatus.NONE;
  late List<CameraDescription> _cameras;
  late CameraController _cameraController;

  void initializerCamera() async {
    _widgetStatus = WidgetStatus.LOADING;
    if (mounted) setState(() {});
    _cameras = await availableCameras();
    _cameraController =
        new CameraController(_cameras[0], ResolutionPreset.high);

    await _cameraController.initialize();

    if (_cameraController.value.hasError) {
      _widgetStatus = WidgetStatus.ERROR;
      if (mounted) setState(() {});
    } else {
      _widgetStatus = WidgetStatus.LEADED;
      if (mounted) setState(() {});
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initializerCamera();
  }

  @override
  Widget build(BuildContext context) {
    switch (_widgetStatus) {
      case WidgetStatus.NONE:
      case WidgetStatus.LOADING:
        return _buildScaffold(
            context,
            new Center(
              child: CircularProgressIndicator(),
            ));
      case WidgetStatus.LEADED:
        return _buildScaffold(context, CameraPreview(_cameraController));
      case WidgetStatus.ERROR:
        return _buildScaffold(
            context,
            new Center(
              child: new Text(
                  "La camara no se pudo inicializar!!!. Reinicie la aplicación"),
            ));
    }
  }

  Widget _buildScaffold(BuildContext context, Widget body) {
    return new Scaffold(
      
      body: new Container(                
        child: new Column(                
          children: <Widget>[
            body,            
          ],
        ),
        
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {},
        child: new Icon(Icons.camera),
      ),
       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
