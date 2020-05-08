import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class Webview extends StatelessWidget {
  String url;
  Webview({this.url});
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: url,
      withJavascript: true,
      withLocalStorage: true,
      withZoom: true,
    );
  }
}