import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/widgets/vertical_space.dart';
import 'package:shimmer/shimmer.dart';


class LoadingWidget extends StatefulWidget {
  const LoadingWidget({super.key});

  @override
  State<LoadingWidget> createState() => _LoadingWidgetState();
}

class _LoadingWidgetState extends State<LoadingWidget> {
  BorderRadius borderRadius =BorderRadius.circular(18.w);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.all(8.h),
          child: Material(
            color: Theme.of(context).cardColor,
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
                  child: Shimmer.fromColors(
                    baseColor: Colors.black12,
                    highlightColor: Colors.white,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20.w),
                          child: Container(
                            color: Colors.red,
                            height: 100.h,
                            width: 100.w,),

                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: double.infinity.w,
                                height: 45.h,
                                decoration: BoxDecoration(
                                  borderRadius: borderRadius,
                                  color: Colors.red
                                ),
                              )
                              ,const VerticalSpace(height: 5),
                              Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  width: 130.w,
                                  height: 25.h,
                                  decoration: BoxDecoration(
                                      borderRadius: borderRadius,
                                      color: Colors.red
                                  ),
                                ),
                              ),
                              const VerticalSpace(height: 5),
                              FittedBox(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    ClipOval(
                                      child: Container(
                                        width: 25.w,
                                        height: 25.h,
                                        color: Colors.red,

                                      ),
                                    ),
                                    SizedBox(width: 5.w,),
                                    Container(
                                      width: 130.w,
                                      height: 25.h,
                                      decoration: BoxDecoration(
                                          borderRadius: borderRadius,
                                          color: Colors.red
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        itemCount: 10,
      ),
    );
  }
}
