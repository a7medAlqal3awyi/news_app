import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

enum NewsType { allNews, topTrending }

enum SortByEnum { relevancy, popularity, publishedAt }

TextStyle smallTextStyle = GoogleFonts.lato(
  fontSize: 15.sp,
  height: 1.5,
);

List<String> searchKeys=[
  "Gaza",
  "Palastine",
  "Flutter",
  "Weather",
  "Python",
  "Wars",
  "Football",
];
