import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/consts/vars.dart';
import 'package:news_app/services/utils.dart';
import 'package:news_app/widgets/custom_button.dart';
import 'package:news_app/widgets/drower_widget.dart';
import 'package:news_app/widgets/tap_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var newsType = NewsType.allNews;
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      drawer: const DrawerWidget(),
      body: Column(
        children: [
          _categoryWidget(),
          newsType == NewsType.topTrending
              ? Container()
              : _pageNavigation()
        ],
      ),
    );
  }
_pageNavigation(){
    return SizedBox(
      height: kBottomNavigationBarHeight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomButton(
              text: "Prev",
              onPressed: () {
                setState(() {
                  if (currentPageIndex > 0) {
                    currentPageIndex -= 1;
                  }
                });
              }),
          Flexible(
            flex: 2,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: ((context, index) {
                return Padding(
                  padding: EdgeInsets.all(8.w),
                  child: Material(
                    color: currentPageIndex == index
                        ? Colors.blue
                        : Theme.of(context).cardColor,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          currentPageIndex = index;
                        });
                        print(currentPageIndex);
                      },
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.all(8.0.w),
                          child: Text((index + 1).toString(),
                            style: TextStyle(
                                color: currentPageIndex ==index ? Colors.white:Colors.black
                            ),),
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
          CustomButton(
              text: "Next",
              onPressed: () {
                if (currentPageIndex == 4) {
                  return;
                }
                setState(() {
                  currentPageIndex += 1;
                });
              }),
        ],
      ),
    ) ;
}
  _appBar() {
    Color color = Utils(context).getColor;

    return AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: color),
        title: Text(
          "News app",
          style: TextStyle(fontSize: 20.sp, letterSpacing: .6, color: color),
        ),
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(IconlyLight.search),
          ),
        ]);
  }

  _categoryWidget() {
    return Row(
      children: [
        TapWidget(
          text: "All news",
          fontSize: newsType == NewsType.allNews ? 20 : 14.sp,
          color: newsType == NewsType.allNews
              ? Theme.of(context).cardColor
              : Colors.transparent,
          onTap: () {
            if (newsType == NewsType.allNews) {
              return;
            }
            setState(() {
              newsType = NewsType.allNews;
            });
          },
          // fontColor: color,
        ),
        TapWidget(
          text: "Top trending",
          fontSize: newsType == NewsType.topTrending ? 20 : 14.sp,
          color: newsType == NewsType.topTrending
              ? Theme.of(context).cardColor
              : Colors.transparent,
          onTap: () {
            if (newsType == NewsType.topTrending) {
              return;
            }
            setState(() {
              newsType = NewsType.topTrending;
            });
          },
          // fontColor: color,
        ),
        // TapWidget(text: "Top Trending"),
      ],
    );
  }
}
