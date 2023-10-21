import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../consts/vars.dart';

class DropDownWidget extends StatefulWidget {
  const DropDownWidget({super.key});

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  String sortBy = SortByEnum.publishedAt.name;

  List<DropdownMenuItem<String>> get dropdownMenuItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(
          value: SortByEnum.relevancy.name,
          child: Text(SortByEnum.relevancy.name)),
      DropdownMenuItem(
          value: SortByEnum.popularity.name,
          child: Text(SortByEnum.popularity.name)),
      DropdownMenuItem(
          value: SortByEnum.publishedAt.name,
          child: Text(SortByEnum.publishedAt.name)),
    ];
    return menuItems;
  }

  @override
  Widget build(BuildContext context) {


    return  Align(
      alignment: Alignment.topRight,
      child: Container(
        color: Theme.of(context).cardColor,
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: DropdownButton(
            value: sortBy,
            items: dropdownMenuItems,
            onChanged: (String? val) {
              setState(() {

              });
            }),
      ),
    );
  }
}
