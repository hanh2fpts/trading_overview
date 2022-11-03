import 'package:flutter/material.dart';
import 'package:trading_overview/scaffold_widget.dart';

class AssetPage extends StatelessWidget {
  const AssetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ScaffoldWidget(context: context, titlePage: 'Báo cáo tài sản'),
    );
  }
}