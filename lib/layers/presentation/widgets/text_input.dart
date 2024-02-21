import 'package:flutter/material.dart';

Widget StylishEditText({
  required String hintTitle,
}){
  return Container(
    padding: const EdgeInsets.only(
      top: 15,
      right: 30,
      left: 30,
    ),
    child: TextField(
      cursorColor: Colors.redAccent,
      decoration: InputDecoration(
        hintText: hintTitle,
        hintStyle: const TextStyle(
          color: Colors.redAccent,
        ),
        floatingLabelStyle: TextStyle(
          backgroundColor: Colors.grey
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
              color: Colors.redAccent,
            )
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: Colors.redAccent,
          )
      ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
              color: Colors.redAccent,
            )
        ),
        alignLabelWithHint: true,

      ),
      textAlign: TextAlign.center,

      style: const TextStyle(
        fontSize: 16,
      ),
    ),
  );
}