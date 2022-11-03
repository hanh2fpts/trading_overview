import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:trading_overview/constants/colors_constant.dart';

class ScaffoldWidget extends AppBar {
  final String titlePage;
  final List<Widget> listAction;
  final BuildContext context;
  final bool isShowIconMenu;

  ScaffoldWidget(
      {required this.titlePage,
      this.listAction = const <Widget>[],
      required this.context,
      this.isShowIconMenu = true,
      super.key});

  @override
  Color? get backgroundColor => ColorConstant.colorFPTSBlue;

  @override
  Widget? get title => Text(titlePage);

  @override
  List<Widget>? get actions => listAction;

  @override
  Widget? get leading => isShowIconMenu
      ? IconButton(
          icon: const Icon(
            Icons.menu,
            size: 25,
          ),
          onPressed: () {
            if (ZoomDrawer.of(context)!.isOpen()) {
              ZoomDrawer.of(context)!.close();
            } else {
              ZoomDrawer.of(context)!.open();
            }
          },
        )
      : const SizedBox();
}
