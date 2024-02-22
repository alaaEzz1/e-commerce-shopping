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
        animateToClosest: true,
        autoPlayAnimationDuration: const Duration(
          seconds: 60,
        ),
        autoPlay: true,
      ),
      carouselController: CarouselController(),
    ),
  );
}