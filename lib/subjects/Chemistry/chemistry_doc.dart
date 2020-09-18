import 'package:flutter/material.dart';

class Chemistrydoc {
  String imgUrl;
  String name;
  Color color1;
  Color color2;
  int totalTopics;

  Chemistrydoc({
    this.imgUrl,
    this.name,
    this.color1,
    this.color2,
    this.totalTopics,
  });
}

List<Chemistrydoc> chemistrydocs = [
  Chemistrydoc(
    imgUrl: 'assets/images/tumbnail_p1.jpg',
    name: 'Chemistry',
    color1: Colors.redAccent,
    totalTopics: 5,
  ),
  Chemistrydoc(
    imgUrl: 'assets/images/tumbnail_p2.jpg',
    name: 'Chemistry',
    color1: Colors.blueAccent,
    totalTopics: 6,
  ),
  Chemistrydoc(
    imgUrl: 'assets/images/tumbnail_p3.jpg',
    name: 'Chemistry',
    color1: Colors.teal,
    
    totalTopics: 4,
  ),
 Chemistrydoc(
    imgUrl: 'assets/images/tumbnail_p1.jpg',
    name: 'Chemistry',
    color1: Colors.redAccent,
    totalTopics: 5,
  ),
 
];

