import 'package:flutter/material.dart';

import 'my_point.dart';

class RecommendationItem extends StatelessWidget {
  RecommendationItem(
      {Key? key,
      required this.newImgUrl,
      required this.category,
      required this.mainTxt,
      required this.profileImg,
      required this.name,
      required this.date})
      : super(key: key);
  final String newImgUrl;
  final String category;
  final String mainTxt;
  final String profileImg;
  final String name;
  final String date;

  @override
  Widget build(BuildContext context) {
    return InkWell(

      onTap: (){
        print('InkWell pressed' );
        },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 120,
              width: 125,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        newImgUrl
                      ))),
            ),
            SizedBox(
              width: 8,
            ),
            Expanded(
              child: Container(
                height: 130,
                width: 130,
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      category,
                      style: TextStyle(fontSize: 13, color: Colors.grey),
                    ),
                    Spacer(flex: 1),
                    Text(
                      mainTxt,
                      maxLines: 2,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    Spacer(flex: 1),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.white,
                          backgroundImage: NetworkImage(
                            profileImg,
                          ),
                        ),
                        SizedBox(
                          width: 1,
                        ),
                        Text(
                          name,
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        MySmallPoint(
                          color: Colors.grey,
                          height: 4,
                          width: 4,
                        ),
                        Text(
                         date as String,
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
