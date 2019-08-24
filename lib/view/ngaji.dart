import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

void main() => runApp(Ngaji());

class Ngaji extends StatefulWidget {
  Ngaji({Key key}) : super(key: key);

  _NgajiState createState() => _NgajiState();
}

class _NgajiState extends State<Ngaji> {

  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WebviewScaffold(
        url: 'http://medium.com/',
        withZoom: true,
        withJavascript: true,
        scrollBar: true,
        supportMultipleWindows: true,
        initialChild: Container(
          child: Center(
            child: CircularProgressIndicator(),
          ),
        ),
      )
    );
  }
}