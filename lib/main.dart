import 'package:flutter/material.dart';
import 'ClassBuilder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'IconWidgetBuilder.dart';

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
              SizedBox(
                width: double.infinity,
              ),
              Button(
                icon: Icons.fitness_center,
                appbartext: "Weight Training",
                url: "https://classroom.google.com/u/1/c/NTYwMjE2MjQxMTZa",
              ),
              Container(
                width: 160,
                height: 34,
                color: Colors.white,
                child: Center(
                  child: Text("Weight Training",
                      style: GoogleFonts.getFont("Lato",
                          fontSize: 20, fontWeight: FontWeight.bold)),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Button(
                url: "https://classroom.google.com/u/1/c/NjYyMjY4ODI5MDBa",
                appbartext: "Computer Science",
                icon: Icons.computer,
              ),
              Container(
                width: 170,
                height: 34,
                color: Colors.white,
                child: Center(
                  child: Text("Computer Science",
                      style: GoogleFonts.getFont("Lato",
                          fontSize: 20, fontWeight: FontWeight.bold)),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Button(
                appbartext: "Chemistry",
                url: "https://classroom.google.com/u/1/c/NjYyMjY4ODI5MDBa",
                icon: Icons.scatter_plot,
              ),
              Container(
                width: 130,
                height: 34,
                color: Colors.white,
                child: Center(
                  child: Text("Chemistry",
                      style: GoogleFonts.getFont("Lato",
                          fontSize: 20, fontWeight: FontWeight.bold)),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Button(
                appbartext: "Math",
                url: "https://hcdsb.elearningontario.ca/d2l/home/14773715",
                icon: Icons.add,
              ),
              Container(
                width: 80,
                height: 34,
                color: Colors.white,
                child: Center(
                  child: Text("Math",
                      style: GoogleFonts.getFont("Lato",
                          fontSize: 20, fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
