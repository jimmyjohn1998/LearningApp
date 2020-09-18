import 'package:flutter/material.dart';
import 'package:learning_app/Home/home_important.dart';
import 'package:learning_app/subjects/subject_doc.dart';

class Homeindsubject extends StatefulWidget {
  final Subject subject;
  Homeindsubject({this.subject});

  @override
  _HomeindsubjectState createState() => _HomeindsubjectState();
}

class _HomeindsubjectState extends State<Homeindsubject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Container(
            //color: Colors.red,
            child: Column(
              children: <Widget>[
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/background_login.png'),
                        fit: BoxFit.fill),
                  ),
                  child: Stack(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              IconButton(
                                icon: Icon(Icons.arrow_back),
                                color: Colors.white,
                                onPressed: () {},
                              ),
                              Text(
                                widget.subject.name,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              IconButton(
                                icon: Icon(Icons.notifications),
                                color: Colors.white,
                                onPressed: () {},
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          
          HomeimportantGrid(widget.subject.lname,2),//passing cross axis value,eg:3
         
        ],
      ),
    );
  }
}
