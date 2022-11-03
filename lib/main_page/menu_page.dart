import 'package:flutter/material.dart';
import 'package:trading_overview/constants/colors_constant.dart';
import 'package:trading_overview/constants/menu.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 30),
            color: ColorConstant.colorFPTSBlue,
            height: 120,
            child: Row(
              children: [
                const Icon(
                  Icons.account_circle_rounded,
                  color: Colors.white,
                  size: 60,
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      '058C455421',
                      style: TextStyle(color: Colors.white, fontSize: 13),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'NGUYEN MINH TUAN',
                      style: TextStyle(color: Colors.white, fontSize: 13),
                    ),
                  ],
                ),
                const Spacer(),
                const Icon(
                  Icons.settings,
                  color: Colors.white,
                  size: 25,
                ),
                const Spacer(),
                const Icon(Icons.power_settings_new_rounded,
                    color: Colors.white, size: 25),
                const Spacer(),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: Menu.listMenuItem.length,
              itemBuilder: (context, index) {
                if (index == 0 || index == 9 || index == 18 || index == 23) {
                  return HeadingItemWidget(
                      headingTitle: Menu.listMenuItem[index].title);
                } else {
                  return MenuItemWidget(title: Menu.listMenuItem[index].title);
                }
              },
            ),
          )
        ],
      ),
    );
  }
}

class MenuItemWidget extends StatelessWidget {
  const MenuItemWidget({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.account_circle,
              size: 35,
              color: ColorConstant.colorFPTSBlue,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: const TextStyle(fontSize: 16),
            )
          ],
        ));
  }
}

class HeadingItemWidget extends StatelessWidget {
  const HeadingItemWidget({Key? key, required this.headingTitle})
      : super(key: key);
  final String headingTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10),
      height: 40,
      decoration: BoxDecoration(color: Colors.grey.shade300),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          headingTitle,
          style: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
