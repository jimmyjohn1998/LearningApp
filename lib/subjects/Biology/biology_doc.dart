import 'package:flutter/material.dart';

class Biologydoc {
  String imgUrl;
  String name;
  Color color1;
  Color color2;
  int totalTopics;

  Biologydoc({
    this.imgUrl,
    this.name,
    this.color1,
    this.color2,
    this.totalTopics,
  });
}

List<Biologydoc> biologydocs = [
  Biologydoc(
    imgUrl: 'assets/images/tumbnail_p1.jpg',
    name: 'Biology',
    color1: Colors.redAccent,
    totalTopics: 5,
  ),
  Biologydoc(
    imgUrl: 'assets/images/tumbnail_p2.jpg',
    name: 'Biology',
    color1: Colors.blueAccent,
    totalTopics: 6,
  ),
  Biologydoc(
    imgUrl: 'assets/images/tumbnail_p3.jpg',
    name: 'Biology',
    color1: Colors.teal,
    
    totalTopics: 4,
  ),
 Biologydoc(
    imgUrl: 'assets/images/tumbnail_p1.jpg',
    name: 'Biology',
    color1: Colors.redAccent,
    totalTopics: 5,
  ),
 
];

