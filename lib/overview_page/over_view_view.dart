import 'package:flutter/material.dart';
import 'package:trading_overview/constants/watchlist.dart';
import 'package:trading_overview/overview_page/index_page.dart';

class OverViewView extends StatelessWidget {
  const OverViewView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const IndexPage(),
        const Divider(thickness: 2),
        Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'BẢNG GIÁ',
                style: TextStyle(fontSize: 18),
              ),
            ),
            const Spacer(),
            Row(
              children: const [
                Icon(
                  Icons.menu_sharp,
                  size: 27,
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.add,
                  size: 27,
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.arrow_forward_ios_sharp,
                  size: 27,
                ),
                SizedBox(
                  width: 15,
                ),
              ],
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Text(
                    'Mã',
                    style: TextStyle(fontSize: 15),
                  ),
                  Icon(Icons.sort)
                ],
              ),
              Row(
                children: const [
                  Text(
                    'Giá',
                    style: TextStyle(fontSize: 15),
                  ),
                  Icon(Icons.sort)
                ],
              ),
              Row(
                children: const [
                  Text(
                    '+/-',
                    style: TextStyle(fontSize: 15),
                  ),
                  Icon(Icons.sort)
                ],
              ),
              Row(
                children: const [
                  Text(
                    'khối lượng',
                    style: TextStyle(fontSize: 15),
                  ),
                  Icon(Icons.sort)
                ],
              )
            ],
          ),
        ),
        const Expanded(child: WatchListWidget())
      ],
    );
  }
}

class WatchListWidget extends StatelessWidget {
  const WatchListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: WatchListConstant.listStockModel.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      WatchListConstant.listStockModel[index].stockCode,
                      style: TextStyle(
                          fontSize: 15,
                          color:
                              WatchListConstant.listStockModel[index].colors),
                    ),
                    Text(
                      WatchListConstant.listStockModel[index].price,
                      style: TextStyle(
                          fontSize: 15,
                          color:
                              WatchListConstant.listStockModel[index].colors),
                    ),
                    Text(
                      WatchListConstant.listStockModel[index].change,
                      style: TextStyle(
                          fontSize: 15,
                          color:
                              WatchListConstant.listStockModel[index].colors),
                    ),
                    Text(
                      WatchListConstant.listStockModel[index].volume,
                      style: TextStyle(
                          fontSize: 15,
                          color:
                              WatchListConstant.listStockModel[index].colors),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 2,
              )
            ],
          ),
        );
      },
    );
  }
}
