import 'package:flutter/material.dart';
import 'package:trading_overview/scaffold_widget.dart';

class TranferPage extends StatelessWidget {
  const TranferPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ScaffoldWidget(
        context: context,
        titlePage: 'Chuyển tiền',
        listAction: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Image.asset(
              'assets/icon_edit.png',
              color: Colors.white,
              width: 20,
              height: 20,
            ),
          )
        ],
      ),
    );
  }
}
