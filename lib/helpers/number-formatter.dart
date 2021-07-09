import 'package:intl/intl.dart';

String formatNumber(String number) {
  final detailsFormat = NumberFormat("0000000000.00", "en_GB");
  final newNumber = detailsFormat.format(double.parse(number));
  final splitNumber = newNumber.toString().split('.');
  int firstNonZero = splitNumber[0].indexOf(RegExp(r"[1-9]")) > -1
      ? splitNumber[0].indexOf(RegExp(r"[1-9]"))
      : splitNumber[0].length - 1;
  return "${splitNumber[0].replaceRange(0, firstNonZero, '  ' * firstNonZero)}.${splitNumber[1]} μg/m\u00B3";
}
