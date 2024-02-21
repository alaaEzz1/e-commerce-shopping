import 'package:e_commerce_shopping/layers/presentation/widgets/button.dart';
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
          StylishButton(
            title: "click me",
            onPress: () {},
          ),
          StylishEditText(
            hintTitle: "My Text Hint",
          )
        ],
      ),
    );
  }
}
