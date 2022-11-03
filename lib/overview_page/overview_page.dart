import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:trading_overview/constants/colors_constant.dart';

class OverViewPage extends StatelessWidget {
  const OverViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            if (ZoomDrawer.of(context)!.isOpen()) {
              ZoomDrawer.of(context)!.close();
            } else {
              ZoomDrawer.of(context)!.open();
            }
          },
        ),
      ),
      bottomNavigationBar: ConvexAppBar(
          height: 50,
          style: TabStyle.fixedCircle,
          backgroundColor: ColorConstant.colorFPTSBlue,
          items: const [
            TabItem(title: 'Thị trường', icon: Icons.bar_chart_outlined),
            TabItem(title: 'Tài sản', icon: Icons.assessment_outlined),
            TabItem(title: 'Đặt lệnh', icon: Icons.gavel_outlined),
            TabItem(title: 'Hủy/Sửa', icon: Icons.note_alt_outlined),
            TabItem(
                title: 'Chuyển tiền', icon: Icons.currency_exchange_outlined),
          ]),
    );
  }
}
