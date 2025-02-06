/// 植物テーブル
abstract final class PlantsNameTbl {
  /// テーブル名
  static const String tableName = "plants_name_tbl";

  /// 植物ID(主キー、自動増分)
  static const String plantsID = "plants_name_id";

  /// 植物名(必須フィールド)
  static const String plantsName = "plants_name";

  /// CREATE TABLE文
  /// このSQLステートメントを実行すると、以下の操作が行われる。
  /// 1. "plants_name_tbl"という名前のテーブルを作成
  /// 2. 整数型の"plants_name_id"を主キーとして設定(自動増分)
  /// 3. 必須のテキストフィールド"plants_name"を追加
  static const String createTableStatement = ""
      "CREATE TABLE $tableName ( "
      "$plantsID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, "
      "$plantsName TEXT NOT NULL "
      ");";

  /// CREATE INDEX文
  /// このSQLステートメントを実行すると、以下の操作が行われる。
  /// 1. "plants_name_id"フィールドにユニークインデックスを作成
  /// 2.これにより、"plants_name_id"フィールドの検索が高速化される。
  static const String createIndexStatement = ""
      "CREATE UNIQUE INDEX plants_name_tbl_plants_name_id_index "
      "ON $tableName ($plantsID);";
}

/// 植物日付テーブル
abstract final class PlantsDateTbl {
  /// テーブル名
  static const String tableName = "plants_date_tbl";

  /// 植物名ID(外部キー)
  static const String plantsID = "plants_name_id";

  /// 植物日付ID(主キー、自動増分)
  static const String dateID = "plants_date_id";

  /// 植物日付(必須フィールド)
  static const String? date = "plants_date";

  /// CREATE TABLE文
  /// このSQLステートメントを実行すると、以下の操作が行われる。
  /// 1. "plants_date_tbl"という名前のテーブルを作成
  /// 2. 整数型の"plants_date_id"を主キーとして設定(自動増分)
  /// 3. 必須のテキストフィールド"plants_date"を追加
  /// 4. "plants_name_id"を外部キーとして設定し、PlantsNameTblと関連付け
  /// 5. 外部キー制約を設定(削除時は制限、更新時は何もしない)
  static const String createTableStatement = ""
      "CREATE TABLE $tableName ( "
      "$dateID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT , "
      "$plantsID TEXT NOT NULL,"
      "$date TEXT NULL,"
      "FOREIGN KEY ($plantsID) REFERENCES "
      "${PlantsNameTbl.tableName}(${PlantsNameTbl.plantsID}) "
      "ON DELETE RESTRICT ON UPDATE NO ACTION"
      ");";

  /// CREATE INDEX文 その1
  /// このSQLステートメントを実行すると、以下の操作が行われます：
  /// 1. 'plants_date_id'フィールドにユニークインデックスを作成
  /// 2. これにより、'plants_date_id'フィールドの検索が高速化される
  static const String createIndexStatement1 = ""
      "CREATE UNIQUE INDEX plants_date_tbl_plants_date_id_index "
      "ON $tableName($dateID);";

  /// CREATE INDEX文 その2
  /// このSQLステートメントを実行すると、以下の操作が行われます：
  /// 1. 'plants_name_id'フィールドにユニークインデックスを作成
  /// 2. これにより、'plants_name_id'フィールドの検索が高速化される
  static const String createIndexStatement2 = ""
      "CREATE UNIQUE INDEX plants_date_tbl_plants_name_id_index "
      "ON $tableName($plantsID);";
}

/// 植物写真テーブル
abstract final class PlantsPhotoTbl {
  /// テーブル名
  static const String tableName = "plants_photo_tbl";

  /// 植物名ID(外部キー)
  static const String plantsID = "plants_name_id";

  /// 植物日付ID(外部キー)
  static const String dateID = "plants_date_id";

  /// 植物写真ID(主キー、自動増分)
  static const String photoID = "plants_photo_id";

  ///　植物写真url(必須フィールド)
  static const String photoUrl = "plants_photo_url";

  /// CREATE TABLE文
  /// このSQLステートメントを実行すると、以下の操作が行われる。
  /// 1. "plants_photo_tbl"という名前のテーブルを作成
  /// 2. 整数型の"plants_photo_id"を主キーとして設定(自動増分)
  /// 3. 必須のテキストフィールド"plants_photo_url"を追加
  /// 4. "plants_name_id"を外部キーとして設定し、PlantsNameTblと関連付け
  /// 5. "plants_date_id"を外部キーとして設定し、PlantsDateTblと関連付け
  /// 5. 外部キー制約を設定(削除時は制限、更新時は何もしない)
  static const String createTableStatement = ""
      "CREATE TABLE $tableName ( "
      "$photoID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, "
      "$plantsID TEXT NOT NULL, "
      "$dateID TEXT NOT NULL, "
      "$photoUrl TEXT NOT NULL, "
      "FOREIGN KEY ($plantsID) REFERENCES "
      "${PlantsNameTbl.tableName}(${PlantsNameTbl.plantsID}) "
      "ON DELETE RESTRICT ON UPDATE NO ACTION, "
      "FOREIGN KEY ($dateID) REFERENCES "
      "${PlantsDateTbl.tableName}(${PlantsDateTbl.dateID}) "
      "ON DELETE RESTRICT ON UPDATE NO ACTION"
      ");";


  /// CREATE INDEX文 その1
  /// このSQLステートメントを実行すると、以下の操作が行われます：
  /// 1. 'plants_date_id'フィールドにユニークインデックスを作成
  /// 2. これにより、'plants_date_id'フィールドの検索が高速化される
  static const String createIndexStatement1 = ""
      "CREATE UNIQUE INDEX plants_photo_tbl_plants_date_id_index "
      "ON $tableName($dateID);";

  /// CREATE INDEX文 その2
  /// このSQLステートメントを実行すると、以下の操作が行われます：
  /// 1. 'plants_name_id'フィールドにユニークインデックスを作成
  /// 2. これにより、'plants_name_id'フィールドの検索が高速化される
  static const String createIndexStatement2 = ""
      "CREATE UNIQUE INDEX plants_photo_tbl_plants_name_id_index "
      "ON $tableName($plantsID);";

  /// CREATE INDEX文 その3
  /// このSQLステートメントを実行すると、以下の操作が行われます：
  /// 1. 'plants_date_id'フィールドにユニークインデックスを作成
  /// 2. これにより、'plants_date_id'フィールドの検索が高速化される
  static const String createIndexStatement3 = ""
      "CREATE UNIQUE INDEX plants_photo_tbl_plants_photo_id_index "
      "ON $tableName($photoID);";
}
