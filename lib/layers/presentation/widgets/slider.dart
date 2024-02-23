import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

Widget AutoImageSlider({
  required List<Widget> items,
}){
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 16,),
    child: CarouselSlider(
      items: items,
      options: CarouselOptions(
        height: 400,
        enlargeCenterPage: true,
        disableCenter: true,
        enlargeFactor:  0.4,
        animateToClosest: true,
        pageSnapping: true,
        autoPlayInterval: const Duration(
          seconds: 5,
        ),
        autoPlayAnimationDuration: const Duration(
          seconds: 1,
        ),
        autoPlay: true,
        autoPlayCurve: Curves.decelerate,
      ),
      carouselController: CarouselController(),
    ),
  );
}