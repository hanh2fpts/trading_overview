class IndexModel {
  final String stockName;
  final double value;
  final String change;
  final String changePer;
  final String volume;

  IndexModel(
      {required this.stockName,
      required this.value,
      required this.change,
      required this.changePer,
      required this.volume});
}
