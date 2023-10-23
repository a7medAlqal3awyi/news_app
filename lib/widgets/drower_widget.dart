import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/screens/bookmark_screen.dart';
import 'package:news_app/widgets/vertical_space.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

import '../providers/theme_providers.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Drawer(
      child: Material(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Theme.of(context).primaryColor),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Image.asset(
                      "assets/images/newspaper.png",
                      width: 90.w,
                      height: 90.h,
                    ),
                  ),
                  const VerticalSpace(height: 20),
                   Flexible(child: Text("News app",
                  style: GoogleFonts.lobster(
                    textStyle: TextStyle(fontSize: 20.sp,letterSpacing: .6)
                  ),),),
                ],
              ),
            ),
            const VerticalSpace(height: 20),
             ListTitles(
              icon: const Icon(IconlyBold.home),
              text: "Home",
              onTap: (){},

            ),
             ListTitles(
              icon: const Icon(IconlyBold.bookmark),
              text: "Bookmarks",
              onTap: (){
                Navigator.of(context).push(
                PageTransition(
                  child:const BookMarkScreen() ,
                    type: PageTransitionType.rightToLeft,
    ),);
              },
            ),
             Divider(thickness: 3.h,),
            SwitchListTile(
              title:  Text(themeProvider.getDarkTheme? 'Dark':'Light',
              style: TextStyle(fontSize: 20.sp),),
              secondary: Icon(
                  themeProvider.getDarkTheme? Icons.dark_mode:Icons.light_mode,

              color: Theme.of(context).colorScheme.secondary,),
              value: themeProvider.getDarkTheme,
              onChanged: (bool value) {
                setState(() {
                  themeProvider.setDarkTheme = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ListTitles extends StatelessWidget {
  const ListTitles({
    super.key,
    required this.text,
    required this.icon, this.onTap,
  });

  final String text;
  final Widget icon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          text,
          style: TextStyle(fontSize: 20.sp),
        ),
        leading: icon,
       iconColor: Theme.of(context).colorScheme.secondary,
       onTap: onTap,
    );
  }
}
