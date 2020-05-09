import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class Math extends StatefulWidget {
  @override
  _SecondRouteState createState() => _SecondRouteState();
}

class _SecondRouteState extends State<Math> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Text(
          "Math",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Webpage(),
    );
  }
}

class Webpage extends StatefulWidget {
  @override
  _WebpageState createState() => _WebpageState();
}

class _WebpageState extends State<Webpage> {
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: "https://hcdsb.elearningontario.ca/d2l/home/14773715",
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}