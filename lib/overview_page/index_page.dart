import 'package:flutter/material.dart';
import 'package:trading_overview/constants/index.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemCount: IndexConstant.listIndex.length + 1,
        itemBuilder: (context, index) {
          if (index != IndexConstant.listIndex.length) {
            return IndexItemWidget(
                stockName: IndexConstant.listIndex[index].stockName,
                value: IndexConstant.listIndex[index].value,
                change: IndexConstant.listIndex[index].change,
                changePer: IndexConstant.listIndex[index].changePer,
                volume: IndexConstant.listIndex[index].volume);
          } else {
            return const Icon(Icons.arrow_forward_ios_sharp);
          }
        },
      ),
    );
  }
}

class IndexItemWidget extends StatelessWidget {
  const IndexItemWidget(
      {Key? key,
      required this.stockName,
      required this.value,
      required this.change,
      required this.changePer,
      required this.volume})
      : super(key: key);
  final String stockName;
  final double value;
  final String change;
  final String changePer;
  final String volume;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            stockName,
            style: const TextStyle(color: Colors.black, fontSize: 17),
          ),
          const SizedBox(height: 5,),
          Text(
            '$value',
            style: TextStyle(
                color: value > 0 ? Colors.green : Colors.red, fontSize: 17),
          ),
          const SizedBox(height: 5,),
          Row(
            children: [
              Text(
                change,
                style: TextStyle(
                    color: value > 0 ? Colors.green : Colors.red, fontSize: 15),
              ),
              Text(
                changePer,
                style: TextStyle(
                    color: value > 0 ? Colors.green : Colors.red, fontSize: 15),
              ),
            ],
          ),
          const SizedBox(height: 5,),
          Text(
            volume,
            style: const TextStyle(fontSize: 15),
          )
        ],
      ),
    );
  }
}
