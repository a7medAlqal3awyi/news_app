import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:news_app/widgets/vertical_space.dart';

import '../consts/vars.dart';
import '../services/utils.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  late TextEditingController _searchTextController;
  late FocusNode focusNode;

  @override
  void initState() {
    super.initState();
    _searchTextController = TextEditingController();
    focusNode = FocusNode();
  }

  @override
  void dispose() {
    if (mounted) {
      _searchTextController.dispose();
      focusNode.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            _searchAppBar(),
            const VerticalSpace(height: 10),
            _keywordHelper()
          ],
        ),
      ),
    );
  }

  _searchAppBar() {
    Color color = Utils(context).getColor;

    return TextFormField(
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      focusNode: focusNode,
      controller: _searchTextController,
      autofocus: true,
      style: TextStyle(color: color),
      textInputAction: TextInputAction.search,
      decoration: InputDecoration(
          prefixIcon: IconButton(
            onPressed: () {
              focusNode.unfocus();
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              size: 18,
              color: Colors.grey,
            ),
          ),
          suffixIcon: IconButton(
            onPressed: () {
              _searchTextController.clear();
              focusNode.unfocus();
              setState(() {});
            },
            icon: const Icon(
              Icons.close,
              size: 18,
              color: Colors.red,
            ),
          ),
          hintText: "Search",
          border: const OutlineInputBorder(borderSide: BorderSide.none)),
    );
  }

  _keywordHelper() {
    Color color = Utils(context).getColor;

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: MasonryGridView.count(
          crossAxisCount: 4,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          itemCount: searchKeys.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: color,
                  ),
                  borderRadius: BorderRadius.circular(30.w),
                ),
                child: Padding(
                    padding: EdgeInsets.all(8.w),
                    child: Center(child: Text("${searchKeys[index]}"))),
              ),
            );
          },
        ),
      ),
    );
  }
}
