import 'package:e_commerce_shopping/layers/presentation/widgets/button.dart';
import 'package:e_commerce_shopping/layers/presentation/widgets/slider.dart';
import 'package:e_commerce_shopping/layers/presentation/widgets/text_input.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 10,
        ),
        children: [
          Center(
            child: AutoImageSlider(
              items: [
                Image.network(
                  'https://i.pinimg.com/564x/c4/3f/45/c43f4514ba7b37853d2ffb5f8dfb39e4.jpg',
                  height: 400,
                ),
                Image.network(
                  'https://i.pinimg.com/564x/3c/57/46/3c57461024262176d2572dc015e5d6b7.jpg',
                  height: 400,
                ),
                Image.network(
                  'https://i.pinimg.com/736x/cb/0b/3a/cb0b3adc402b80f860fae425a3a7571e.jpg',
                  height: 400,
                ),
              ],
            ),
          ),
          StylishButton(
            title: "click me",
            onPress: () {},
          ),
          StylishEditText(
            hintTitle: "My Text Hint",
          ),
        ],
      ),
    );
  }
}
