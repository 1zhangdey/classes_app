import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ClassBuilder extends StatefulWidget {
  @override
  _SecondRouteState createState() => _SecondRouteState();
}


class _SecondRouteState extends State<ClassBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Text(
          "Chemistry",
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
      initialUrl: "https://classroom.google.com/u/3/c/MTEyMDg1NTU0MVpa",
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}