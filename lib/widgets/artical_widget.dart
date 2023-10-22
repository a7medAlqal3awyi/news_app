import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/widgets/vertical_space.dart';

import '../consts/vars.dart';

class ArticleWidget extends StatelessWidget {
  const ArticleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.all(8.h),
          child: Material(
            color: Theme.of(context).cardColor,
            child: InkWell(
              onTap: () {},
              child: Stack(
                children: [
                  Container(
                    width: 60.w,
                    height: 60.h,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      width: 60.w,
                      height: 60.h,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                  Container(
                    color: Theme.of(context).cardColor,
                    padding: EdgeInsets.all(10.w),
                    margin: EdgeInsets.all(10.w),
                    height: 155,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20.w),
                          child: FancyShimmerImage(
                            height: 100.h,
                            width: 100.w,
                            boxFit: BoxFit.fill,
                            imageUrl:
                                'https://th.bing.com/th/id/OIP.HxV79tFMPfBAIo0BBF-sOgHaEy?pid=ImgDet&rs=1',
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                maxLines: 2,
                                textAlign: TextAlign.justify,
                                overflow:TextOverflow.ellipsis,
                                "The Dropdown Button is kjldf flskdjf  with oreuitie rutiore ieroutoi c,nvbm, cx,nb heheThe DropdownButton is configured with thehett of tBy state when a n",
                                style: smallTextStyle,
                              ),
                              const VerticalSpace(height: 5),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Icon(
                                    Icons.watch_later_outlined,
                                    size: 25,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  const Text("Reading time ")
                                ],
                              ),
                              FittedBox(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.link,
                                          size: 25,
                                          color: Colors.blue,
                                        )),
                                    Text("200-55-5" * 2)
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        itemCount: 10,
      ),
    );
  }
}
