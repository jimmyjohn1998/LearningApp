import 'package:flutter/material.dart';
import 'package:learning_app/subjects/Biology/biology_doc.dart';
import 'package:learning_app/subjects/Chemistry/chemistry_doc.dart';
import 'package:learning_app/subjects/Maths/maths_doc.dart';
import 'package:learning_app/subjects/Physics/physics_doc.dart';

class Subject {
  int id;
  String imgUrl;
  String name;
  Color color1;
  Color color2;
  int totalTopics;
  List lname;

  Subject({
    this.id,
    this.imgUrl,
    this.name,
    this.color1,
    this.color2,
    this.totalTopics,
    this.lname,
  });
}

List<Subject> subjects = [
  Subject(
    id: 1,
    imgUrl: 'assets/images/physics_home.png',
    name: 'Physics',
    color1: Colors.redAccent,
    lname: physicsdocs,
    totalTopics: 5,
  ),
  Subject(
    id: 2,
    imgUrl: 'assets/images/chemistry_home.jpg',
    name: 'Chemistry',
    color1: Colors.blueAccent,
    lname: chemistrydocs,
    totalTopics: 6,
  ),
  Subject(
    id: 3,
    imgUrl: 'assets/images/maths_home.png',
    name: 'Maths',
    color1: Colors.teal,
    lname: mathsdoc,
    
    totalTopics: 4,
  ),
  Subject(
    id:4,
    imgUrl: 'assets/images/maths_home.png',
    name: 'Biology',
    color1: Colors.lightGreen,
    lname: biologydocs,
    totalTopics: 7,
  ),
];
