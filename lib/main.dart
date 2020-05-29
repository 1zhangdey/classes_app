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
          child: Text("Classes", style: TextStyle(color: Colors.black, fontSize: 32),),
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
              ButtonTheme(
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
                        builder: (context) => ClassBuilder(appbartext: "Weight Training",url: "https://classroom.google.com/u/1/c/NTYwMjE2MjQxMTZa",),
                      ),
                    );
                  },
                  child: Icon(
                    Icons.fitness_center,
                    color: Colors.black,
                  ),
                ),
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
              ButtonTheme(
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
                        builder: (context) => ClassBuilder(appbartext: "Computer Science", url: "https://classroom.google.com/u/1/c/NjYyMjY4ODI5MDBa",),
                      ),
                    );
                  },
                  child: Icon(
                    Icons.computer,
                    color: Colors.black,
                  ),
                ),
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
              ButtonTheme(
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
                        builder: (context) => ClassBuilder(appbartext: "Chemistry", url: "https://classroom.google.com/u/1/c/NjYyMjY4ODI5MDBa",),
                      ),
                    );
                  },
                  child: Icon(
                    Icons.scatter_plot,
                    color: Colors.black,
                  ),
                ),
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
              ButtonTheme(
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
                        builder: (context) => ClassBuilder(appbartext: "Math", url:  "https://hcdsb.elearningontario.ca/d2l/home/14773715",),
                      ),
                    );
                  },
                  child: Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                ),
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