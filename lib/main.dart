import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/providers/theme_providers.dart';
import 'package:news_app/screens/home_screen.dart';
import 'package:news_app/styles/theme_data.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeProvider themeChangeProvider = ThemeProvider();

  @override
  void initState() {
    getCurrentAppTheme();
    super.initState();
  }

  //Fetch the current theme
  void getCurrentAppTheme() async {
    themeChangeProvider.setDarkTheme =
        await themeChangeProvider.darkThemePreferences.getTheme();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) {
            //Notify about theme changes
            return themeChangeProvider;
          }),
        ],
        child: Consumer<ThemeProvider>(
          builder: (context, themeChangeProvider, ch) {
            return ScreenUtilInit(
              designSize: const Size(360, 690),
              minTextAdapt: true,
              splitScreenMode: true,
              builder: (_,child) {
                return  MaterialApp(
                  debugShowCheckedModeBanner: false,
                  title: 'Blog',
                  theme:
                  Styles.themeData(themeChangeProvider.getDarkTheme, context),
                  home: const HomeScreen(),
                  routes: {
                    // NewsDetailsScreen.routeName: (ctx) => const NewsDetailsScreen(),
                  },
                ) ;
              },
            );
          },
        ));
  }
}

