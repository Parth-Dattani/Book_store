// ignore_for_file: camel_case_types, prefer_const_constructors, avoid_unnecessary_containers, annotate_overrides, override_on_non_overriding_member

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class slider extends StatefulWidget {
  const slider({Key? key}) : super(key: key);

  @override
  _sliderState createState() => _sliderState();
}

class _sliderState extends State<slider> {
  @override
  final List items = ["HELLO MAN", "NAMAS STAY", "DIRTY FELLOW"];

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      child: CarouselSlider(
        options: CarouselOptions(
            height: 250, autoPlay: true, enlargeCenterPage: true),
        items: items.map((item) {
          return Builder(builder: (BuildContext context) {
            return Container(
                child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Stack(children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            "images/on1.png",
                            fit: BoxFit.fitHeight,
                            height: double.infinity,
                          )),
                      Positioned(
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(
                                    colors: [
                                      Colors.black12.withOpacity(0),
                                      Colors.black
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter)),
                            child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 10),
                                child: Text(
                                  "Get 50% Off on Your Online Payment",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.yellowAccent,
                                      fontWeight: FontWeight.bold),
                                )),
                          )),
                    ])));
          });
        }).toList(),
      ),
    );
  }
}
