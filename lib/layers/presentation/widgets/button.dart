import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget StylishButton({
  required Function? onPress(),
  required String title,
}) {
  return Container(
    padding: const EdgeInsets.only(
      left: 50,
      right: 50,
      top: 15,
    ),
    child: ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.redAccent,
        minimumSize: const Size.fromHeight(50),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    ),
  );
}
