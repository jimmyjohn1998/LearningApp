import 'package:flutter/material.dart';
import 'package:learning_app/Home/home_ind_subject.dart';
import 'package:learning_app/subjects/subject_doc.dart';

class Homesubjects extends StatefulWidget {
  @override
  _HomesubjectsState createState() => _HomesubjectsState();
}

class _HomesubjectsState extends State<Homesubjects> {
  num countValue = 2;

  num aspectWidth = 2;

  num aspectHeight = 1;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: countValue,
      childAspectRatio: (aspectWidth / aspectHeight),
      children: subjects
          .map(
            (data) => GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => Homeindsubject(
                    subject: data,
                  ),
                ),
              ),
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomRight,
                      stops: [0.1, 1],
                      colors: [data.color1, Colors.white]),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.blue,
                        backgroundImage: AssetImage(data.imgUrl),
                        radius: 20,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(data.name,
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center),
                  ],
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
