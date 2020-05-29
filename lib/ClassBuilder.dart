import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';




class ClassBuilder extends StatelessWidget {
  ClassBuilder({this.appbartext,this.url});
  final String url;
  final String appbartext;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Text(
          appbartext,
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Webpage(classURL: url,),
    );
  }
}



class Webpage extends StatelessWidget {
  Webpage({this.classURL});
  final String classURL;
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: classURL,
    );
  }
}
