// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'db_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PlantsNameSummary {
  /// 植物名ID
  PlantsId get id => throw _privateConstructorUsedError;

  /// 植物名
  String get name => throw _privateConstructorUsedError;

  /// 植物の数(植物未登録時は0)
  int get PlantsCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlantsNameSummaryCopyWith<PlantsNameSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlantsNameSummaryCopyWith<$Res> {
  factory $PlantsNameSummaryCopyWith(
          PlantsNameSummary value, $Res Function(PlantsNameSummary) then) =
      _$PlantsNameSummaryCopyWithImpl<$Res, PlantsNameSummary>;
  @useResult
  $Res call({PlantsId id, String name, int PlantsCount});

  $PlantsIdCopyWith<$Res> get id;
}

/// @nodoc
class _$PlantsNameSummaryCopyWithImpl<$Res, $Val extends PlantsNameSummary>
    implements $PlantsNameSummaryCopyWith<$Res> {
  _$PlantsNameSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? PlantsCount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as PlantsId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      PlantsCount: null == PlantsCount
          ? _value.PlantsCount
          : PlantsCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlantsIdCopyWith<$Res> get id {
    return $PlantsIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PlantsNameSummaryCopyWith<$Res>
    implements $PlantsNameSummaryCopyWith<$Res> {
  factory _$$_PlantsNameSummaryCopyWith(_$_PlantsNameSummary value,
          $Res Function(_$_PlantsNameSummary) then) =
      __$$_PlantsNameSummaryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PlantsId id, String name, int PlantsCount});

  @override
  $PlantsIdCopyWith<$Res> get id;
}

/// @nodoc
class __$$_PlantsNameSummaryCopyWithImpl<$Res>
    extends _$PlantsNameSummaryCopyWithImpl<$Res, _$_PlantsNameSummary>
    implements _$$_PlantsNameSummaryCopyWith<$Res> {
  __$$_PlantsNameSummaryCopyWithImpl(
      _$_PlantsNameSummary _value, $Res Function(_$_PlantsNameSummary) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? PlantsCount = null,
  }) {
    return _then(_$_PlantsNameSummary(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as PlantsId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      PlantsCount: null == PlantsCount
          ? _value.PlantsCount
          : PlantsCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PlantsNameSummary implements _PlantsNameSummary {
  const _$_PlantsNameSummary(
      {required this.id, required this.name, required this.PlantsCount});

  /// 植物名ID
  @override
  final PlantsId id;

  /// 植物名
  @override
  final String name;

  /// 植物の数(植物未登録時は0)
  @override
  final int PlantsCount;

  @override
  String toString() {
    return 'PlantsNameSummary(id: $id, name: $name, PlantsCount: $PlantsCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlantsNameSummary &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.PlantsCount, PlantsCount) ||
                other.PlantsCount == PlantsCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, PlantsCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlantsNameSummaryCopyWith<_$_PlantsNameSummary> get copyWith =>
      __$$_PlantsNameSummaryCopyWithImpl<_$_PlantsNameSummary>(
          this, _$identity);
}

abstract class _PlantsNameSummary implements PlantsNameSummary {
  const factory _PlantsNameSummary(
      {required final PlantsId id,
      required final String name,
      required final int PlantsCount}) = _$_PlantsNameSummary;

  @override

  /// 植物名ID
  PlantsId get id;
  @override

  /// 植物名
  String get name;
  @override

  /// 植物の数(植物未登録時は0)
  int get PlantsCount;
  @override
  @JsonKey(ignore: true)
  _$$_PlantsNameSummaryCopyWith<_$_PlantsNameSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PlantsNameDetail {
  /// 植物名ID
  PlantsId get id => throw _privateConstructorUsedError;

  /// 植物名
  String get name => throw _privateConstructorUsedError;

  /// 植物日付リスト
  PlantsDateList get dateList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlantsNameDetailCopyWith<PlantsNameDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlantsNameDetailCopyWith<$Res> {
  factory $PlantsNameDetailCopyWith(
          PlantsNameDetail value, $Res Function(PlantsNameDetail) then) =
      _$PlantsNameDetailCopyWithImpl<$Res, PlantsNameDetail>;
  @useResult
  $Res call({PlantsId id, String name, PlantsDateList dateList});

  $PlantsIdCopyWith<$Res> get id;
}

/// @nodoc
class _$PlantsNameDetailCopyWithImpl<$Res, $Val extends PlantsNameDetail>
    implements $PlantsNameDetailCopyWith<$Res> {
  _$PlantsNameDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? dateList = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as PlantsId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      dateList: null == dateList
          ? _value.dateList
          : dateList // ignore: cast_nullable_to_non_nullable
              as PlantsDateList,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlantsIdCopyWith<$Res> get id {
    return $PlantsIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PlantsNameDetailCopyWith<$Res>
    implements $PlantsNameDetailCopyWith<$Res> {
  factory _$$_PlantsNameDetailCopyWith(
          _$_PlantsNameDetail value, $Res Function(_$_PlantsNameDetail) then) =
      __$$_PlantsNameDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PlantsId id, String name, PlantsDateList dateList});

  @override
  $PlantsIdCopyWith<$Res> get id;
}

/// @nodoc
class __$$_PlantsNameDetailCopyWithImpl<$Res>
    extends _$PlantsNameDetailCopyWithImpl<$Res, _$_PlantsNameDetail>
    implements _$$_PlantsNameDetailCopyWith<$Res> {
  __$$_PlantsNameDetailCopyWithImpl(
      _$_PlantsNameDetail _value, $Res Function(_$_PlantsNameDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? dateList = null,
  }) {
    return _then(_$_PlantsNameDetail(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as PlantsId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      dateList: null == dateList
          ? _value.dateList
          : dateList // ignore: cast_nullable_to_non_nullable
              as PlantsDateList,
    ));
  }
}

/// @nodoc

class _$_PlantsNameDetail implements _PlantsNameDetail {
  const _$_PlantsNameDetail(
      {required this.id, required this.name, required this.dateList});

  /// 植物名ID
  @override
  final PlantsId id;

  /// 植物名
  @override
  final String name;

  /// 植物日付リスト
  @override
  final PlantsDateList dateList;

  @override
  String toString() {
    return 'PlantsNameDetail(id: $id, name: $name, dateList: $dateList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlantsNameDetail &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.dateList, dateList) ||
                other.dateList == dateList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, dateList);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlantsNameDetailCopyWith<_$_PlantsNameDetail> get copyWith =>
      __$$_PlantsNameDetailCopyWithImpl<_$_PlantsNameDetail>(this, _$identity);
}

abstract class _PlantsNameDetail implements PlantsNameDetail {
  const factory _PlantsNameDetail(
      {required final PlantsId id,
      required final String name,
      required final PlantsDateList dateList}) = _$_PlantsNameDetail;

  @override

  /// 植物名ID
  PlantsId get id;
  @override

  /// 植物名
  String get name;
  @override

  /// 植物日付リスト
  PlantsDateList get dateList;
  @override
  @JsonKey(ignore: true)
  _$$_PlantsNameDetailCopyWith<_$_PlantsNameDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PlantsId {
  /// ID値
  int get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlantsIdCopyWith<PlantsId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlantsIdCopyWith<$Res> {
  factory $PlantsIdCopyWith(PlantsId value, $Res Function(PlantsId) then) =
      _$PlantsIdCopyWithImpl<$Res, PlantsId>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$PlantsIdCopyWithImpl<$Res, $Val extends PlantsId>
    implements $PlantsIdCopyWith<$Res> {
  _$PlantsIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlantsIdCopyWith<$Res> implements $PlantsIdCopyWith<$Res> {
  factory _$$_PlantsIdCopyWith(
          _$_PlantsId value, $Res Function(_$_PlantsId) then) =
      __$$_PlantsIdCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$_PlantsIdCopyWithImpl<$Res>
    extends _$PlantsIdCopyWithImpl<$Res, _$_PlantsId>
    implements _$$_PlantsIdCopyWith<$Res> {
  __$$_PlantsIdCopyWithImpl(
      _$_PlantsId _value, $Res Function(_$_PlantsId) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_PlantsId(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PlantsId implements _PlantsId {
  const _$_PlantsId({required this.id});

  /// ID値
  @override
  final int id;

  @override
  String toString() {
    return 'PlantsId(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlantsId &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlantsIdCopyWith<_$_PlantsId> get copyWith =>
      __$$_PlantsIdCopyWithImpl<_$_PlantsId>(this, _$identity);
}

abstract class _PlantsId implements PlantsId {
  const factory _PlantsId({required final int id}) = _$_PlantsId;

  @override

  /// ID値
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$_PlantsIdCopyWith<_$_PlantsId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PlantsDateSummary {
  /// 植物ID
  PlantsDateId get id => throw _privateConstructorUsedError;

  /// 植物日付日付
  PlantsDateDate? get date => throw _privateConstructorUsedError;

  /// 植物日付数
  int get PlantsDateCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlantsDateSummaryCopyWith<PlantsDateSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlantsDateSummaryCopyWith<$Res> {
  factory $PlantsDateSummaryCopyWith(
          PlantsDateSummary value, $Res Function(PlantsDateSummary) then) =
      _$PlantsDateSummaryCopyWithImpl<$Res, PlantsDateSummary>;
  @useResult
  $Res call({PlantsDateId id, PlantsDateDate? date, int PlantsDateCount});

  $PlantsDateIdCopyWith<$Res> get id;
  $PlantsDateDateCopyWith<$Res>? get date;
}

/// @nodoc
class _$PlantsDateSummaryCopyWithImpl<$Res, $Val extends PlantsDateSummary>
    implements $PlantsDateSummaryCopyWith<$Res> {
  _$PlantsDateSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = freezed,
    Object? PlantsDateCount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as PlantsDateId,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as PlantsDateDate?,
      PlantsDateCount: null == PlantsDateCount
          ? _value.PlantsDateCount
          : PlantsDateCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlantsDateIdCopyWith<$Res> get id {
    return $PlantsDateIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PlantsDateDateCopyWith<$Res>? get date {
    if (_value.date == null) {
      return null;
    }

    return $PlantsDateDateCopyWith<$Res>(_value.date!, (value) {
      return _then(_value.copyWith(date: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PlantsDateSummaryCopyWith<$Res>
    implements $PlantsDateSummaryCopyWith<$Res> {
  factory _$$_PlantsDateSummaryCopyWith(_$_PlantsDateSummary value,
          $Res Function(_$_PlantsDateSummary) then) =
      __$$_PlantsDateSummaryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PlantsDateId id, PlantsDateDate? date, int PlantsDateCount});

  @override
  $PlantsDateIdCopyWith<$Res> get id;
  @override
  $PlantsDateDateCopyWith<$Res>? get date;
}

/// @nodoc
class __$$_PlantsDateSummaryCopyWithImpl<$Res>
    extends _$PlantsDateSummaryCopyWithImpl<$Res, _$_PlantsDateSummary>
    implements _$$_PlantsDateSummaryCopyWith<$Res> {
  __$$_PlantsDateSummaryCopyWithImpl(
      _$_PlantsDateSummary _value, $Res Function(_$_PlantsDateSummary) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = freezed,
    Object? PlantsDateCount = null,
  }) {
    return _then(_$_PlantsDateSummary(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as PlantsDateId,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as PlantsDateDate?,
      PlantsDateCount: null == PlantsDateCount
          ? _value.PlantsDateCount
          : PlantsDateCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PlantsDateSummary implements _PlantsDateSummary {
  const _$_PlantsDateSummary(
      {required this.id, required this.date, required this.PlantsDateCount});

  /// 植物ID
  @override
  final PlantsDateId id;

  /// 植物日付日付
  @override
  final PlantsDateDate? date;

  /// 植物日付数
  @override
  final int PlantsDateCount;

  @override
  String toString() {
    return 'PlantsDateSummary(id: $id, date: $date, PlantsDateCount: $PlantsDateCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlantsDateSummary &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.PlantsDateCount, PlantsDateCount) ||
                other.PlantsDateCount == PlantsDateCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, date, PlantsDateCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlantsDateSummaryCopyWith<_$_PlantsDateSummary> get copyWith =>
      __$$_PlantsDateSummaryCopyWithImpl<_$_PlantsDateSummary>(
          this, _$identity);
}

abstract class _PlantsDateSummary implements PlantsDateSummary {
  const factory _PlantsDateSummary(
      {required final PlantsDateId id,
      required final PlantsDateDate? date,
      required final int PlantsDateCount}) = _$_PlantsDateSummary;

  @override

  /// 植物ID
  PlantsDateId get id;
  @override

  /// 植物日付日付
  PlantsDateDate? get date;
  @override

  /// 植物日付数
  int get PlantsDateCount;
  @override
  @JsonKey(ignore: true)
  _$$_PlantsDateSummaryCopyWith<_$_PlantsDateSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PlantsDateDetail {
  /// 植物日付ID
  PlantsDateId get id => throw _privateConstructorUsedError;

  /// 植物日付日付
  PlantsDateDate? get date => throw _privateConstructorUsedError;

  /// 写真一覧
  PlantsPhotoList get photoList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlantsDateDetailCopyWith<PlantsDateDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlantsDateDetailCopyWith<$Res> {
  factory $PlantsDateDetailCopyWith(
          PlantsDateDetail value, $Res Function(PlantsDateDetail) then) =
      _$PlantsDateDetailCopyWithImpl<$Res, PlantsDateDetail>;
  @useResult
  $Res call({PlantsDateId id, PlantsDateDate? date, PlantsPhotoList photoList});

  $PlantsDateIdCopyWith<$Res> get id;
  $PlantsDateDateCopyWith<$Res>? get date;
}

/// @nodoc
class _$PlantsDateDetailCopyWithImpl<$Res, $Val extends PlantsDateDetail>
    implements $PlantsDateDetailCopyWith<$Res> {
  _$PlantsDateDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = freezed,
    Object? photoList = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as PlantsDateId,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as PlantsDateDate?,
      photoList: null == photoList
          ? _value.photoList
          : photoList // ignore: cast_nullable_to_non_nullable
              as PlantsPhotoList,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlantsDateIdCopyWith<$Res> get id {
    return $PlantsDateIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PlantsDateDateCopyWith<$Res>? get date {
    if (_value.date == null) {
      return null;
    }

    return $PlantsDateDateCopyWith<$Res>(_value.date!, (value) {
      return _then(_value.copyWith(date: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PlantsDateDetailCopyWith<$Res>
    implements $PlantsDateDetailCopyWith<$Res> {
  factory _$$_PlantsDateDetailCopyWith(
          _$_PlantsDateDetail value, $Res Function(_$_PlantsDateDetail) then) =
      __$$_PlantsDateDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PlantsDateId id, PlantsDateDate? date, PlantsPhotoList photoList});

  @override
  $PlantsDateIdCopyWith<$Res> get id;
  @override
  $PlantsDateDateCopyWith<$Res>? get date;
}

/// @nodoc
class __$$_PlantsDateDetailCopyWithImpl<$Res>
    extends _$PlantsDateDetailCopyWithImpl<$Res, _$_PlantsDateDetail>
    implements _$$_PlantsDateDetailCopyWith<$Res> {
  __$$_PlantsDateDetailCopyWithImpl(
      _$_PlantsDateDetail _value, $Res Function(_$_PlantsDateDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = freezed,
    Object? photoList = null,
  }) {
    return _then(_$_PlantsDateDetail(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as PlantsDateId,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as PlantsDateDate?,
      photoList: null == photoList
          ? _value.photoList
          : photoList // ignore: cast_nullable_to_non_nullable
              as PlantsPhotoList,
    ));
  }
}

/// @nodoc

class _$_PlantsDateDetail implements _PlantsDateDetail {
  const _$_PlantsDateDetail(
      {required this.id, required this.date, required this.photoList});

  /// 植物日付ID
  @override
  final PlantsDateId id;

  /// 植物日付日付
  @override
  final PlantsDateDate? date;

  /// 写真一覧
  @override
  final PlantsPhotoList photoList;

  @override
  String toString() {
    return 'PlantsDateDetail(id: $id, date: $date, photoList: $photoList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlantsDateDetail &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.photoList, photoList) ||
                other.photoList == photoList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, date, photoList);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlantsDateDetailCopyWith<_$_PlantsDateDetail> get copyWith =>
      __$$_PlantsDateDetailCopyWithImpl<_$_PlantsDateDetail>(this, _$identity);
}

abstract class _PlantsDateDetail implements PlantsDateDetail {
  const factory _PlantsDateDetail(
      {required final PlantsDateId id,
      required final PlantsDateDate? date,
      required final PlantsPhotoList photoList}) = _$_PlantsDateDetail;

  @override

  /// 植物日付ID
  PlantsDateId get id;
  @override

  /// 植物日付日付
  PlantsDateDate? get date;
  @override

  /// 写真一覧
  PlantsPhotoList get photoList;
  @override
  @JsonKey(ignore: true)
  _$$_PlantsDateDetailCopyWith<_$_PlantsDateDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PlantsDate {
  /// 植物日付ID
  PlantsDateId get id => throw _privateConstructorUsedError;

  /// 植物日付日付
  PlantsDateDate? get date => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlantsDateCopyWith<PlantsDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlantsDateCopyWith<$Res> {
  factory $PlantsDateCopyWith(
          PlantsDate value, $Res Function(PlantsDate) then) =
      _$PlantsDateCopyWithImpl<$Res, PlantsDate>;
  @useResult
  $Res call({PlantsDateId id, PlantsDateDate? date});

  $PlantsDateIdCopyWith<$Res> get id;
  $PlantsDateDateCopyWith<$Res>? get date;
}

/// @nodoc
class _$PlantsDateCopyWithImpl<$Res, $Val extends PlantsDate>
    implements $PlantsDateCopyWith<$Res> {
  _$PlantsDateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as PlantsDateId,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as PlantsDateDate?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlantsDateIdCopyWith<$Res> get id {
    return $PlantsDateIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PlantsDateDateCopyWith<$Res>? get date {
    if (_value.date == null) {
      return null;
    }

    return $PlantsDateDateCopyWith<$Res>(_value.date!, (value) {
      return _then(_value.copyWith(date: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PlantsDateCopyWith<$Res>
    implements $PlantsDateCopyWith<$Res> {
  factory _$$_PlantsDateCopyWith(
          _$_PlantsDate value, $Res Function(_$_PlantsDate) then) =
      __$$_PlantsDateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PlantsDateId id, PlantsDateDate? date});

  @override
  $PlantsDateIdCopyWith<$Res> get id;
  @override
  $PlantsDateDateCopyWith<$Res>? get date;
}

/// @nodoc
class __$$_PlantsDateCopyWithImpl<$Res>
    extends _$PlantsDateCopyWithImpl<$Res, _$_PlantsDate>
    implements _$$_PlantsDateCopyWith<$Res> {
  __$$_PlantsDateCopyWithImpl(
      _$_PlantsDate _value, $Res Function(_$_PlantsDate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = freezed,
  }) {
    return _then(_$_PlantsDate(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as PlantsDateId,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as PlantsDateDate?,
    ));
  }
}

/// @nodoc

class _$_PlantsDate implements _PlantsDate {
  const _$_PlantsDate({required this.id, required this.date});

  /// 植物日付ID
  @override
  final PlantsDateId id;

  /// 植物日付日付
  @override
  final PlantsDateDate? date;

  @override
  String toString() {
    return 'PlantsDate(id: $id, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlantsDate &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlantsDateCopyWith<_$_PlantsDate> get copyWith =>
      __$$_PlantsDateCopyWithImpl<_$_PlantsDate>(this, _$identity);
}

abstract class _PlantsDate implements PlantsDate {
  const factory _PlantsDate(
      {required final PlantsDateId id,
      required final PlantsDateDate? date}) = _$_PlantsDate;

  @override

  /// 植物日付ID
  PlantsDateId get id;
  @override

  /// 植物日付日付
  PlantsDateDate? get date;
  @override
  @JsonKey(ignore: true)
  _$$_PlantsDateCopyWith<_$_PlantsDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PlantsDateId {
  ///ID値
  int get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlantsDateIdCopyWith<PlantsDateId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlantsDateIdCopyWith<$Res> {
  factory $PlantsDateIdCopyWith(
          PlantsDateId value, $Res Function(PlantsDateId) then) =
      _$PlantsDateIdCopyWithImpl<$Res, PlantsDateId>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$PlantsDateIdCopyWithImpl<$Res, $Val extends PlantsDateId>
    implements $PlantsDateIdCopyWith<$Res> {
  _$PlantsDateIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlantsDateIdCopyWith<$Res>
    implements $PlantsDateIdCopyWith<$Res> {
  factory _$$_PlantsDateIdCopyWith(
          _$_PlantsDateId value, $Res Function(_$_PlantsDateId) then) =
      __$$_PlantsDateIdCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$_PlantsDateIdCopyWithImpl<$Res>
    extends _$PlantsDateIdCopyWithImpl<$Res, _$_PlantsDateId>
    implements _$$_PlantsDateIdCopyWith<$Res> {
  __$$_PlantsDateIdCopyWithImpl(
      _$_PlantsDateId _value, $Res Function(_$_PlantsDateId) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_PlantsDateId(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PlantsDateId implements _PlantsDateId {
  const _$_PlantsDateId({required this.id});

  ///ID値
  @override
  final int id;

  @override
  String toString() {
    return 'PlantsDateId(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlantsDateId &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlantsDateIdCopyWith<_$_PlantsDateId> get copyWith =>
      __$$_PlantsDateIdCopyWithImpl<_$_PlantsDateId>(this, _$identity);
}

abstract class _PlantsDateId implements PlantsDateId {
  const factory _PlantsDateId({required final int id}) = _$_PlantsDateId;

  @override

  ///ID値
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$_PlantsDateIdCopyWith<_$_PlantsDateId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PlantsDateDate {
  /// 年
  int get year => throw _privateConstructorUsedError;

  /// 月
  int get month => throw _privateConstructorUsedError;

  /// 日付
  int get dayOfMonth => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlantsDateDateCopyWith<PlantsDateDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlantsDateDateCopyWith<$Res> {
  factory $PlantsDateDateCopyWith(
          PlantsDateDate value, $Res Function(PlantsDateDate) then) =
      _$PlantsDateDateCopyWithImpl<$Res, PlantsDateDate>;
  @useResult
  $Res call({int year, int month, int dayOfMonth});
}

/// @nodoc
class _$PlantsDateDateCopyWithImpl<$Res, $Val extends PlantsDateDate>
    implements $PlantsDateDateCopyWith<$Res> {
  _$PlantsDateDateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = null,
    Object? month = null,
    Object? dayOfMonth = null,
  }) {
    return _then(_value.copyWith(
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int,
      dayOfMonth: null == dayOfMonth
          ? _value.dayOfMonth
          : dayOfMonth // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlantsDateDateCopyWith<$Res>
    implements $PlantsDateDateCopyWith<$Res> {
  factory _$$_PlantsDateDateCopyWith(
          _$_PlantsDateDate value, $Res Function(_$_PlantsDateDate) then) =
      __$$_PlantsDateDateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int year, int month, int dayOfMonth});
}

/// @nodoc
class __$$_PlantsDateDateCopyWithImpl<$Res>
    extends _$PlantsDateDateCopyWithImpl<$Res, _$_PlantsDateDate>
    implements _$$_PlantsDateDateCopyWith<$Res> {
  __$$_PlantsDateDateCopyWithImpl(
      _$_PlantsDateDate _value, $Res Function(_$_PlantsDateDate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = null,
    Object? month = null,
    Object? dayOfMonth = null,
  }) {
    return _then(_$_PlantsDateDate(
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int,
      dayOfMonth: null == dayOfMonth
          ? _value.dayOfMonth
          : dayOfMonth // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PlantsDateDate implements _PlantsDateDate {
  const _$_PlantsDateDate(
      {required this.year, required this.month, required this.dayOfMonth});

  /// 年
  @override
  final int year;

  /// 月
  @override
  final int month;

  /// 日付
  @override
  final int dayOfMonth;

  @override
  String toString() {
    return 'PlantsDateDate(year: $year, month: $month, dayOfMonth: $dayOfMonth)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlantsDateDate &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.dayOfMonth, dayOfMonth) ||
                other.dayOfMonth == dayOfMonth));
  }

  @override
  int get hashCode => Object.hash(runtimeType, year, month, dayOfMonth);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlantsDateDateCopyWith<_$_PlantsDateDate> get copyWith =>
      __$$_PlantsDateDateCopyWithImpl<_$_PlantsDateDate>(this, _$identity);
}

abstract class _PlantsDateDate implements PlantsDateDate {
  const factory _PlantsDateDate(
      {required final int year,
      required final int month,
      required final int dayOfMonth}) = _$_PlantsDateDate;

  @override

  /// 年
  int get year;
  @override

  /// 月
  int get month;
  @override

  /// 日付
  int get dayOfMonth;
  @override
  @JsonKey(ignore: true)
  _$$_PlantsDateDateCopyWith<_$_PlantsDateDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PlantsPhoto {
  /// 植物写真ID
  PlantsPhotoId get id => throw _privateConstructorUsedError;

  /// 植物写真url
  String get url => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlantsPhotoCopyWith<PlantsPhoto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlantsPhotoCopyWith<$Res> {
  factory $PlantsPhotoCopyWith(
          PlantsPhoto value, $Res Function(PlantsPhoto) then) =
      _$PlantsPhotoCopyWithImpl<$Res, PlantsPhoto>;
  @useResult
  $Res call({PlantsPhotoId id, String url});

  $PlantsPhotoIdCopyWith<$Res> get id;
}

/// @nodoc
class _$PlantsPhotoCopyWithImpl<$Res, $Val extends PlantsPhoto>
    implements $PlantsPhotoCopyWith<$Res> {
  _$PlantsPhotoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as PlantsPhotoId,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlantsPhotoIdCopyWith<$Res> get id {
    return $PlantsPhotoIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PlantsPhotoCopyWith<$Res>
    implements $PlantsPhotoCopyWith<$Res> {
  factory _$$_PlantsPhotoCopyWith(
          _$_PlantsPhoto value, $Res Function(_$_PlantsPhoto) then) =
      __$$_PlantsPhotoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PlantsPhotoId id, String url});

  @override
  $PlantsPhotoIdCopyWith<$Res> get id;
}

/// @nodoc
class __$$_PlantsPhotoCopyWithImpl<$Res>
    extends _$PlantsPhotoCopyWithImpl<$Res, _$_PlantsPhoto>
    implements _$$_PlantsPhotoCopyWith<$Res> {
  __$$_PlantsPhotoCopyWithImpl(
      _$_PlantsPhoto _value, $Res Function(_$_PlantsPhoto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
  }) {
    return _then(_$_PlantsPhoto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as PlantsPhotoId,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PlantsPhoto implements _PlantsPhoto {
  const _$_PlantsPhoto({required this.id, required this.url});

  /// 植物写真ID
  @override
  final PlantsPhotoId id;

  /// 植物写真url
  @override
  final String url;

  @override
  String toString() {
    return 'PlantsPhoto(id: $id, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlantsPhoto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlantsPhotoCopyWith<_$_PlantsPhoto> get copyWith =>
      __$$_PlantsPhotoCopyWithImpl<_$_PlantsPhoto>(this, _$identity);
}

abstract class _PlantsPhoto implements PlantsPhoto {
  const factory _PlantsPhoto(
      {required final PlantsPhotoId id,
      required final String url}) = _$_PlantsPhoto;

  @override

  /// 植物写真ID
  PlantsPhotoId get id;
  @override

  /// 植物写真url
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_PlantsPhotoCopyWith<_$_PlantsPhoto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PlantsPhotoId {
  /// ID値
  int get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlantsPhotoIdCopyWith<PlantsPhotoId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlantsPhotoIdCopyWith<$Res> {
  factory $PlantsPhotoIdCopyWith(
          PlantsPhotoId value, $Res Function(PlantsPhotoId) then) =
      _$PlantsPhotoIdCopyWithImpl<$Res, PlantsPhotoId>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$PlantsPhotoIdCopyWithImpl<$Res, $Val extends PlantsPhotoId>
    implements $PlantsPhotoIdCopyWith<$Res> {
  _$PlantsPhotoIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlantsPhotoIdCopyWith<$Res>
    implements $PlantsPhotoIdCopyWith<$Res> {
  factory _$$_PlantsPhotoIdCopyWith(
          _$_PlantsPhotoId value, $Res Function(_$_PlantsPhotoId) then) =
      __$$_PlantsPhotoIdCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$_PlantsPhotoIdCopyWithImpl<$Res>
    extends _$PlantsPhotoIdCopyWithImpl<$Res, _$_PlantsPhotoId>
    implements _$$_PlantsPhotoIdCopyWith<$Res> {
  __$$_PlantsPhotoIdCopyWithImpl(
      _$_PlantsPhotoId _value, $Res Function(_$_PlantsPhotoId) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_PlantsPhotoId(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PlantsPhotoId implements _PlantsPhotoId {
  const _$_PlantsPhotoId({required this.id});

  /// ID値
  @override
  final int id;

  @override
  String toString() {
    return 'PlantsPhotoId(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlantsPhotoId &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlantsPhotoIdCopyWith<_$_PlantsPhotoId> get copyWith =>
      __$$_PlantsPhotoIdCopyWithImpl<_$_PlantsPhotoId>(this, _$identity);
}

abstract class _PlantsPhotoId implements PlantsPhotoId {
  const factory _PlantsPhotoId({required final int id}) = _$_PlantsPhotoId;

  @override

  /// ID値
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$_PlantsPhotoIdCopyWith<_$_PlantsPhotoId> get copyWith =>
      throw _privateConstructorUsedError;
}
