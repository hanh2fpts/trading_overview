import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:trading_overview/constants/colors_constant.dart';
import 'package:trading_overview/overview_page/over_view_view.dart';

class OverViewPage extends StatefulWidget {
  const OverViewPage({Key? key}) : super(key: key);

  @override
  State<OverViewPage> createState() => _OverViewPageState();
}

class _OverViewPageState extends State<OverViewPage> {
  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;
    return Scaffold(
      appBar: AppBar(
        title: const Text('EzMobileTrading'),
        actions: const <Widget>[
          Icon(
            Icons.compare_arrows,
            size: 30,
          ),
          SizedBox(width: 15),
          Icon(
            Icons.notifications,
            size: 30,
          ),
          SizedBox(width: 15),
          Icon(
            Icons.search,
            size: 30,
          ),
          SizedBox(width: 10),
        ],
        backgroundColor: Theme.of(context).primaryColor,
        leading: IconButton(
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
        ),
      ),
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
          style: TabStyle.reactCircle,
          backgroundColor: ColorConstant.colorFPTSBlue,
          color: Colors.white,
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

class AssetPage extends StatelessWidget {
  const AssetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
    );
  }
}

class OrderPage extends StatelessWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
    );
  }
}

class ModifierPage extends StatelessWidget {
  const ModifierPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
    );
  }
}

class TranferPage extends StatelessWidget {
  const TranferPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
