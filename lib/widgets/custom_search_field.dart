import 'package:flutter/material.dart';

class CustomSearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.greenAccent,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          hintStyle: TextStyle(color: Colors.white),
          hintText: 'O que você quer aprender?',
          suffixIcon: IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Colors.white,
          )
          ),
    );
  }
}
