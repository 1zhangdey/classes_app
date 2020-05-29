import 'package:flutter/material.dart';
import 'IconWidgetBuilder.dart';
import 'TextBuilder.dart';

void main() => runApp(Scheduler());

class Scheduler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            "Classes",
            style: TextStyle(color: Colors.black, fontSize: 32),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage("images/background.jpg")),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Button(
                icon: Icons.fitness_center,
                appbartext: "Weight Training",
                url: "https://classroom.google.com/u/1/c/NTYwMjE2MjQxMTZa",
              ),
              TextBuilder(
                text: "Weight Training",
              ),
              SizedBox(
                height: 50,
              ),
              Button(
                url: "https://classroom.google.com/u/1/c/NjYyMjY4ODI5MDBa",
                appbartext: "Computer Science",
                icon: Icons.computer,
              ),
              TextBuilder(
                text: "Computer Science",
              ),
              SizedBox(
                height: 50,
              ),
              Button(
                appbartext: "Chemistry",
                url: "https://classroom.google.com/u/1/c/NjYyMjY4ODI5MDBa",
                icon: Icons.scatter_plot,
              ),
              TextBuilder(
                text: "Chemistry",
              ),
              SizedBox(
                height: 50,
              ),
              Button(
                appbartext: "Math",
                url: "https://hcdsb.elearningontario.ca/d2l/home/14773715",
                icon: Icons.add,
              ),
              TextBuilder(
                text: "Math",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
