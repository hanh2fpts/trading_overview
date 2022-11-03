import 'package:flutter/material.dart';
import 'package:trading_overview/scaffold_widget.dart';

class ModifierPage extends StatelessWidget {
  const ModifierPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ScaffoldWidget(context: context, titlePage: 'Hủy/Sửa'),
    );
  }
}