import 'package:callenge1/wedgits/botton_nav_bar.dart';
import 'package:callenge1/wedgits/carosal_item.dart';
import 'package:callenge1/wedgits/double_text.dart';
import 'package:callenge1/wedgits/recommendation_item.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({
    Key? key,
  });

  final smoothController =
      PageController(viewportFraction: 0.87);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 10),
          child: CircleAvatar(
            backgroundColor: Colors.grey[100],
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
                size: 28,
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10, top: 10),
            child: CircleAvatar(
              backgroundColor: Colors.grey[100],
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search_rounded,
                  color: Colors.black,
                  size: 28,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0, top: 10),
            child: CircleAvatar(
              backgroundColor: Colors.grey[100],
              child: IconButton(
                onPressed: () {},
                icon: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: 8,
                        height: 8,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.notifications_outlined,
                      color: Colors.black,
                      size: 28,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          SafeArea(
              child: SizedBox(
            height: 20,
          )),
          DoubleText(firstText: 'Breaking News', secondText: 'View all'),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 250,
            child: PageView(
              controller: smoothController,
              scrollDirection: Axis.horizontal,
              allowImplicitScrolling: true,
              children: [
                CarosalItem(
                  url:
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/3/36/Eersel_Wielrenners_resize.jpg/640px-Eersel_Wielrenners_resize.jpg',
                ),
                CarosalItem(
                    url:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQngQxnXucX-ozVWazYdpeduRSSqjZeue6ofWAy3ytqIi5HNBT3k8_iCiUBNRe6kV6IDgY&usqp=CAU'),
                CarosalItem(
                    url:
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ab/Petacchi_MSR_2005.jpg/1280px-Petacchi_MSR_2005.jpg'),
                CarosalItem(
                    url:
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/d/da/Leading_group%2C_Giro_d%27Italia_2021%2C_Stage_15.jpg/1200px-Leading_group%2C_Giro_d%27Italia_2021%2C_Stage_15.jpg'),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Center(
            child: SmoothPageIndicator(
              count: 4,
              controller: smoothController,
              axisDirection: Axis.horizontal,
              effect: const ExpandingDotsEffect(
                dotWidth: 7,
                activeDotColor: Colors.blue,
                spacing: 4,
                radius: 25,
                dotHeight: 8,
                dotColor: Colors.grey,
                expansionFactor: 4,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          DoubleText(firstText: 'Recommendation', secondText: 'View all'),
          RecommendationItem(
              newImgUrl:
                  'https://img.freepik.com/free-photo/smiling-girl-studying-home_329181-18968.jpg?w=1060&t=st=1680035783~exp=1680036383~hmac=72eda945154c550e4ab370509db49257cbd043383910b5adaa3996448b3654ce',
              category: 'Education',
              mainTxt: 'Secondary school places : When do parents find out?',
              name: ' Ahmed',
              date: '31May, 2024',
              profileImg:
                  'https://scontent.fcai20-3.fna.fbcdn.net/v/t39.30808-6/311641834_1725808154421878_6479717269369725134_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=1PgHIFVz2B8AX9m7Swh&_nc_ht=scontent.fcai20-3.fna&oh=00_AfBvuaQGSrhWCPkILJs-arV4qbxPIUC-SsxhQ3ECrN765w&oe=642776C5'),
          RecommendationItem(
            newImgUrl:
                'https://th.bing.com/th/id/R.32b7eca4b5bbca2ac80d4ac724e56204?rik=kS7h0JLqx%2bRc9A&pid=ImgRaw&r=0',
            category: 'Sport',
            mainTxt: 'What Training Do Vollyball Player Need?',
            name: ' Ahmed',
            date: ' 31May, 2024',
            profileImg:
                'https://scontent.fcai20-3.fna.fbcdn.net/v/t39.30808-6/331120169_6081597928555167_6477555689997809478_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=anMV39ZPFFcAX-Hu911&_nc_ht=scontent.fcai20-3.fna&oh=00_AfBhyJLEIm6027bcOpUy_vzJiW7-txCDmIyCF62AxnJcZA&oe=6428B64B',
          ),
        ],
      ),
      bottomNavigationBar: BottonNavBar(
        activeScreen: 0,
      ),
    );
  }
}
