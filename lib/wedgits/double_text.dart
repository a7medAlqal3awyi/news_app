import 'package:flutter/material.dart';

class DoubleText extends StatelessWidget {
   DoubleText({Key? key, required this.firstText, required this.secondText}) ;
 String firstText;
 String secondText;

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:  [
           Text(
            firstText,
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
             secondText,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
        ],
      ),
    );
    ;
  }
}
