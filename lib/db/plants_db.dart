import 'package:flutter/cupertino.dart';
import 'package:plants_management_app/db/db_data.dart';
import 'package:plants_management_app/db/plants_db_tbl.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' as p;

class PlantsDb {
  static Database? _db;

  /// データベースのセットアップを行う。
  static Future<void> setupDatabase() async {
    // データベースのパスを取得。
    final String databasePath = p.join(await getDatabasesPath(), "plants.db");

    // データベースを開く。
    final Database database = await openDatabase(
      databasePath,
      version: 1,
      onConfigure: (db) async {
        debugPrint("データベース構成");
        await db.execute("PRAGMA foreign_keys = ON;");
      },
      onCreate: (db, int version) async {
        debugPrint("データベース作成: $version");

        //植物名テーブルの作成
        await db.execute(PlantsNameTbl.createTableStatement);
        await db.execute(PlantsNameTbl.createIndexStatement);

        //植物日付テーブルの作成
        await db.execute(PlantsDateTbl.createTableStatement);
        await db.execute(PlantsDateTbl.createIndexStatement1);
        await db.execute(PlantsDateTbl.createIndexStatement2);
      },
    );
    _db = database;
  }

  //　植物名詳細データを取得する。
  Future<PlantsNameDetail> _getPlantsNameDetail(
    Transaction tx,
    PlantsId id,
  ) async {
    // 植物名テーブルから指定IDの植物名を取得する。
    final List<Map<String, Object?>> nameMapList = await tx.query(
      PlantsNameTbl.tableName,
      where: "${PlantsNameTbl.plantsID} = ?",
      whereArgs: [id.id],
    );
    final Map<String, Object?> nameMap = nameMapList.first;

    // 植物名のカラムをパースする。
    final int plantsId = nameMap[PlantsNameTbl.plantsID] as int;
    final String plantsNameName = nameMap[PlantsNameTbl.plantsName] as String;

    // この植物名に属する植物日付を取得する。
    final List<Map<String, Object?>> dateMapList = await tx.query(
        PlantsDateTbl.tableName,
        where: "${PlantsDateTbl.plantsID} = ?",
        whereArgs: [plantsId],
        orderBy: "${PlantsDateTbl.dateID} ASC");

    // 植物日付のカラムをパースする。
    final List<PlantsDate> dateList = dateMapList.map((map) {
      final int plantsDateId = map[PlantsDateTbl.dateID] as int;
      final PlantsDateDate? plantsDateDate =
          PlantsDateDate.parse(map[PlantsDateTbl.date] as String?);

      return PlantsDate(
          id: PlantsDateId(id: plantsDateId), date: plantsDateDate);
    }).toList();

    return PlantsNameDetail(
        id: PlantsId(id: plantsId),
        name: plantsNameName,
        dateList: PlantsDateList(dateList));
  }
}
