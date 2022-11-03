import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:trading_overview/asset_page.dart';
import 'package:trading_overview/constants/colors_constant.dart';
import 'package:trading_overview/modifier_page.dart';
import 'package:trading_overview/order_page.dart';
import 'package:trading_overview/overview_page/over_view_view.dart';
import 'package:trading_overview/tranfer_page.dart';

class OverViewPage extends StatefulWidget {
  const OverViewPage({Key? key}) : super(key: key);

  @override
  State<OverViewPage> createState() => _OverViewPageState();
}

class _OverViewPageState extends State<OverViewPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: const [
          OverViewView(),
          AssetPage(),
          OrderPage(),
          ModifierPage(),
          TranferPage(),
        ],
      ),
      bottomNavigationBar: ConvexAppBar(
          height: 50,
          style: TabStyle.fixedCircle,
          backgroundColor: ColorConstant.colorFPTSBlue,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
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
