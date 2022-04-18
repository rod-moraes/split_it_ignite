import 'package:intl/intl.dart';

class FormatStringUtils {
  static formatDateddMMMM(DateTime date) =>
      DateFormat('dd MMMM', 'pt_BR').format(date);
  static formatMoney(double value) =>
      value.abs().toStringAsFixed(2).replaceFirst('.', ',');
}
