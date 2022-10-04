import 'package:flutter/material.dart';

class ListBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.lightBlueAccent,
          shape: BoxShape.rectangle,
          boxShadow: [BoxShadow(blurRadius: 0, offset: Offset(0, 5))]),
    );
  }
}
