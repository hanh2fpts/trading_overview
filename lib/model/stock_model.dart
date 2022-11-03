import 'package:flutter/material.dart';

class StockModel {
  final String stockCode;
  final String price;
  final String change;
  final String volume;
  final Color colors;

  StockModel({
    required this.stockCode,
    required this.price,
    required this.change,
    required this.volume,
    required this.colors,
  });
}
