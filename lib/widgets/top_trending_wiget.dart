import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopTrendingWidget extends StatelessWidget {
  const TopTrendingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(14.w),
      child: InkWell(
        onTap: () {},
        child: Material(
          borderRadius: BorderRadius.circular(12.w),
          color: Theme.of(context).cardColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20.w),
                child: FancyShimmerImage(
                  height: 250.h,
                  width: double.infinity.w,
                  boxFit: BoxFit.fill,
                  imageUrl:
                  'https://th.bing.com/th/id/OIP.HxV79tFMPfBAIo0BBF-sOgHaEy?pid=ImgDet&rs=1',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Title",
                  style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.link,
                        size: 25,
                        color: Colors.blue,
                      )),
                  const Text("2008-55-95")
                ],
              ),
            ],
          ),
        ),
      ),
    )
    ;
  }
}
