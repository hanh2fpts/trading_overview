import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:trading_overview/main_page/menu_page.dart';
import 'package:trading_overview/overview_page/overview_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
        style: DrawerStyle.defaultStyle,
        borderRadius: 24.0,
        showShadow: true,
        angle: 0.0,
        menuBackgroundColor: Theme.of(context).primaryColor,
        mainScreenTapClose: true,
        drawerShadowsBackgroundColor: Colors.grey.shade300,
        slideWidth: MediaQuery.of(context).size.width * 0.8,
        controller: ZoomDrawerController(),
        menuScreen: const MenuPage(),
        mainScreen: const OverViewPage());
  }
}
