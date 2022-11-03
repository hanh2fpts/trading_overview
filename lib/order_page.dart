


import 'package:flutter/material.dart';
import 'package:trading_overview/scaffold_widget.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ScaffoldWidget(context: context, titlePage: 'Đặt lệnh'),
    );
  }
}