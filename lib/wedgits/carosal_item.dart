import 'package:callenge1/wedgits/my_point.dart';
import 'package:flutter/material.dart';

class CarosalItem extends StatelessWidget {
   CarosalItem({Key? key, required this.url }) ;
  final String url;

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: (){
        print('u pressed on Carosal part ');
      },
      child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 250,
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: NetworkImage(
                        url,),
                      fit: BoxFit.cover)),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              margin: EdgeInsets.only(top: 25, left: 30),
              decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(15)),
              child: Text(
                ' Sports ',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.center,
              width: double.infinity,
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Text(
                        'CNN Indonisia',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      SizedBox(width: 2,),
                      Icon(
                        Icons.verified,
                        color: Colors.blue,
                        size: 15,
                      ),
                      MySmallPoint(color: Colors.white, width: 5, height: 5),
                      Text(
                        '6 Hour ago',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'programing is easy ',
                        maxLines: 2,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
    );
  }
}
