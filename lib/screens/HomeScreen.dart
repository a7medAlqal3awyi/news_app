import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/providers/theme_providers.dart';
import 'package:news_app/widgets/drower_widget.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
 title: Text("News app",
   style: GoogleFonts.lobster(
       textStyle: TextStyle(fontSize: 20.sp,letterSpacing: .6)
   ),),
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      drawer: const DrawerWidget(),
      body: Center(
        child: SwitchListTile(
          title: Text(themeProvider.getDarkTheme ? "Dark" : "light"),
          value: themeProvider.getDarkTheme,
          onChanged: (bool value) {
            setState(() {
              themeProvider.setDarkTheme = value;
            });
          },
        ),
      ),
    );
  }
}
