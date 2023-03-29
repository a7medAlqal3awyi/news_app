import 'package:flutter/material.dart';

class MySmallPoint extends StatelessWidget {
  MySmallPoint({
    Key? key,
    required this.color,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        decoration:BoxDecoration(
          shape: BoxShape.circle,
          color: color,

        ),
        width: width,
        height: height,
      ),
    );
  }
}
