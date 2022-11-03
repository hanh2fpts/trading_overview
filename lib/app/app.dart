import 'package:flutter/material.dart';
import 'package:trading_overview/constants/colors_constant.dart';
import 'package:trading_overview/main_page/main_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'Arial', primaryColor: ColorConstant.colorFPTSBlue),
      home: const MainPage(),
    );
  }
}
