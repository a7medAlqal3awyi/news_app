import 'package:callenge1/wedgits/carosal_item.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MyCarousal extends StatelessWidget {
   MyCarousal({Key? key}) ;
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
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
      options: CarouselOptions(
        initialPage: 0,
        scrollDirection: Axis.horizontal,
        disableCenter: true,
        autoPlay: true,
        aspectRatio: 16/ 9,
        viewportFraction: 0.81,
        pauseAutoPlayOnTouch: true,
        enlargeCenterPage: true,
        autoPlayCurve: Curves.linearToEaseOut,
        autoPlayInterval: const Duration(seconds: 3),
        animateToClosest: true,
      ),
    );
  }
}
