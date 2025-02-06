import 'package:intl/intl.dart';
import 'package:plants_management_app/db/db_data.dart';



abstract final class PlantsDateConverter {
  static final _formatter = DateFormat('yyyy年M月d日(E)', 'ja');

  /// 表示上の文字列に変換する。
  static String formatToString(PlantsDateDate? date) {
    //  未設定の場合
    if (date == null) return '日付未設定';

    //  設定されている場合
    final dateTime = DateTime(date.year, date.month, date.dayOfMonth);
    return _formatter.format(dateTime);
  }
}