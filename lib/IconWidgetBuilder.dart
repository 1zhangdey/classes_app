import 'package:flutter/material.dart';
import 'ClassBuilder.dart';

class Button extends StatelessWidget {
  Button({this.icon, this.url, this.appbartext});
  final IconData icon;
  final String url;
  final String appbartext;
  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 100,
      height: 40,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.black, width: 3),
            borderRadius: BorderRadius.circular(30)),
        highlightColor: Colors.black,
        color: Colors.white,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ClassBuilder(
                appbartext: appbartext,
                url: url,
              ),
            ),
          );
        },
        child: Icon(
          icon,
          color: Colors.black,
        ),
      ),
    );
  }
}
