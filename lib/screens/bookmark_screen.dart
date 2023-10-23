import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../services/utils.dart';
import '../widgets/artical_widget.dart';

class BookMarkScreen extends StatefulWidget {
  const BookMarkScreen({super.key});

  @override
  State<BookMarkScreen> createState() => _BookMarkScreenState();
}

class _BookMarkScreenState extends State<BookMarkScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: _appBar(), body: const Column(
      children: [
        ArticleWidget(),
      ],
    ));

    //   EmptyNewsWidget(
    //       title: "You didn't add anything yet to your bookmarks",
    //       image: "assets/images/bookmark.png")
    //
  }

  _appBar() {
    Color color = Utils(context).getColor;

    return AppBar(
      centerTitle: true,
      iconTheme: IconThemeData(color: color),
      title: Text("Bookmarks",
          style: GoogleFonts.lobster(
              fontSize: 20.sp, letterSpacing: .6, color: color)),
      elevation: 0,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    );
  }
}
