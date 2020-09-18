import 'package:flutter/material.dart';

class Mathsdoc {
  String imgUrl;
  String name;
  Color color1;
  Color color2;
  int totalTopics;

  Mathsdoc({
    this.imgUrl,
    this.name,
    this.color1,
    this.color2,
    this.totalTopics,
  });
}

List<Mathsdoc> mathsdoc = [
  Mathsdoc(
    imgUrl: 'assets/images/tumbnail_p1.jpg',
    name: 'Maths',
    color1: Colors.redAccent,
    totalTopics: 5,
  ),
  Mathsdoc(
    imgUrl: 'assets/images/tumbnail_p2.jpg',
    name: 'Maths',
    color1: Colors.blueAccent,
    totalTopics: 6,
  ),
  Mathsdoc(
    imgUrl: 'assets/images/tumbnail_p3.jpg',
    name: 'Maths',
    color1: Colors.teal,
    
    totalTopics: 4,
  ),
 Mathsdoc(
    imgUrl: 'assets/images/tumbnail_p1.jpg',
    name: 'Maths',
    color1: Colors.redAccent,
    totalTopics: 5,
  ),
 
];

