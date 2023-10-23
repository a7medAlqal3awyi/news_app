import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmptyNewsWidget extends StatelessWidget {
  const EmptyNewsWidget({super.key, required this.title, required this.image});

  final String title;
  final String image;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.all(8.w),
      child: Column(
        children: [
          Padding(
            padding:  EdgeInsets.all(18.w),
            child: Image.asset(image),
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight:FontWeight.bold,
              fontSize: 24.sp
            ),
          )
        ],
      ),
    );
  }
}
