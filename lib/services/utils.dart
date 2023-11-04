
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../core/themes/theme_providers.dart';

class Utils{
  BuildContext context ;

  Utils(this.context);

  bool get  getTheme => Provider.of<ThemeProvider>(context).getDarkTheme;
  Color get getColor => getTheme ? Colors.white : Colors.black;
}