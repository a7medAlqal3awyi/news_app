import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TapWidget extends StatelessWidget {
  const TapWidget(
      {super.key,
      required this.text,
      required this.fontSize,
      required this.color,
      this.onTap});

  final String text;
  final double fontSize;
  final Color color;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.w), color: color),
          child: Padding(
            padding: EdgeInsets.all(8.w),
            child: Text(
              text,
              style: TextStyle(
                fontSize: fontSize.sp,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
