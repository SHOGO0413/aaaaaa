import 'package:freezed_annotation/freezed_annotation.dart';

part 'db_data.freezed.dart';

/// 植物名の概要データリスト
class PlantsNameSummaryList {
  PlantsNameSummaryList(this._list);

  final List<PlantsNameSummary> _list;

  /// リストが空かどうか
  bool get isEmpty => _list.isEmpty;

  /// リストの要素数
  int get length => _list.length;

  /// してインデックスの要素を取得
  PlantsNameSummary getElementAt(int index) => _list[index];

  @override
  String toString() {
    return "PlantsNameSummaryList(length=$length)";
  }
}

/// 植物名概要データ
@freezed
class PlantsNameSummary with _$PlantsNameSummary {
  const factory PlantsNameSummary({
    /// 植物名ID
    required PlantsId id,

    /// 植物名

    required String name,

    /// 植物の数(植物未登録時は0)
    required int PlantsCount,
  }) = _PlantsNameSummary;
}

/// 植物名詳細データ
@freezed
class PlantsNameDetail with _$PlantsNameDetail {
  const factory PlantsNameDetail({
    /// 植物名ID
    required PlantsId id,

    /// 植物名
    required String name,

    /// 植物日付リスト
    required PlantsDateList dateList,
  }) = _PlantsNameDetail;
}

/// 植物名ID
@freezed
class PlantsId with _$PlantsId {
  const factory PlantsId({
    /// ID値
    required int id,
  }) = _PlantsId;
}

/// 植物日付リスト
class PlantsDateList {
  PlantsDateList(this._list);

  final List<PlantsDate> _list;

  /// 要素数
  int get length => _list.length;

  PlantsDate getElementAt(int index) => _list[index];
}

/// 植物日付概要データ
@freezed
class PlantsDateSummary with _$PlantsDateSummary {
  const factory PlantsDateSummary({
    /// 植物ID
    required PlantsDateId id,
    /// 植物日付日付
    required PlantsDateDate? date,
    /// 植物日付数
    required int PlantsDateCount,
  }) = _PlantsDateSummary;
}

/// 植物日付詳細データ
@freezed
class PlantsDateDetail with _$PlantsDateDetail {
  const factory PlantsDateDetail({
    /// 植物日付ID
    required PlantsDateId id,

    /// 植物日付日付
    required PlantsDateDate? date,

    /// 写真一覧
    required PlantsPhotoList photoList,
  }) = _PlantsDateDetail;
}

/// 植物日付データ
@freezed
class PlantsDate with _$PlantsDate {
  const factory PlantsDate({
    /// 植物日付ID
    required PlantsDateId id,

    /// 植物日付日付
    required PlantsDateDate? date,

  }) = _PlantsDate;
}

/// 植物日付ID
@freezed
class PlantsDateId with _$PlantsDateId {
  const factory PlantsDateId({
    ///ID値
    required int id,
  }) = _PlantsDateId;
}

/// 植物日付日付
@freezed
class PlantsDateDate with _$PlantsDateDate {
  const factory PlantsDateDate({
    /// 年
    required int year,

    /// 月
    required int month,

    /// 日付
    required int dayOfMonth,
  }) = _PlantsDateDate;

  /// 買い物メモ日付にパースする。
  static PlantsDateDate? parse(String? value) {
    if (value == null) return null;

    final List<String> elements = value.split('-');
    final int year = int.parse(elements[0]);
    final int month = int.parse(elements[1]);
    final int dayOfMonth = int.parse(elements[2]);
    return PlantsDateDate(year: year, month: month, dayOfMonth: dayOfMonth);
  }

  /// DB上の値に変換する。
  static String? toDbValue(PlantsDateDate? date) {
    if (date == null) return null;

    final String year = date.year.toString();
    final String month = date.month.toString().padLeft(2, '0');
    final String dayOfMonth = date.dayOfMonth.toString().padLeft(2, '0');
    return '$year-$month-$dayOfMonth';
  }
}

/// 植物写真リスト
class PlantsPhotoList {
  PlantsPhotoList(this._list);

  final List<PlantsPhoto> _list;

  /// リストが空かどうか
  bool get isEmpty => _list.isEmpty;

  /// リストの要素数
  int get length => _list.length;

  /// 指定インデックスの要素を取得する。
  PlantsPhoto getElementAt(int index) => _list[index];

  @override
  String toString() {
    return 'ShoppingMemoSummaryList(length=$length})';
  }
}

/// 植物写真
@freezed
class PlantsPhoto with _$PlantsPhoto {
  const factory PlantsPhoto({
    /// 植物写真ID
    required PlantsPhotoId id,

    /// 植物写真url
    required String url,
  }) = _PlantsPhoto;
}

/// 植物写真ID
@freezed
class PlantsPhotoId with _$PlantsPhotoId {
  const factory PlantsPhotoId({
    /// ID値
    required int id,
  }) = _PlantsPhotoId;
}
