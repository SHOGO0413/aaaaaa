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
        //植物写真テーブルの作成
        await db.execute(PlantsPhotoTbl.createTableStatement);
        await db.execute(PlantsPhotoTbl.createIndexStatement1);
        await db.execute(PlantsPhotoTbl.createIndexStatement2);
        await db.execute(PlantsPhotoTbl.createIndexStatement3);
      },
    );
    _db = database;
  }

  //　植物名詳細データを取得する。
  Future<PlantsNameDetail> _getPlantsNameDetail(Transaction tx,
      PlantsId id,) async {
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
      final PlantsDateDate? plantsDateDate = PlantsDateDate.parse(
          map[PlantsDateTbl.date] as String?);


      return PlantsDate(
          id: PlantsDateId(id: plantsDateId),
          date: plantsDateDate);
    }).toList();

    return PlantsNameDetail(id: PlantsId(id: plantsId),
        name: plantsNameName,
        dateList: PlantsDateList(dateList));
  }
}

Future<PlantsDateDetail> _getPlantsDateDetail(Transaction tx,
    PlantsDateId id) async {
  // 植物日付テーブルから指定IDの植物日付を取得する。
  final List<Map<String, Object?>> dateMapList = await tx.query(
    PlantsDateTbl.tableName,
    where: "${PlantsDateTbl.dateID}",
    whereArgs: [id, id],
  );
  final Map<String, Object?> dateMap = dateMapList.first;

  // 植物日付のカラムをパースする。
  final int plantsDateID = dateMap[PlantsDateTbl.dateID] as int;
  final PlantsDateDate? plantsDateDate = PlantsDateDate.parse(
      dateMap[PlantsDateTbl.date] as String?);

  // この植物日付に属する植物写真を取得する。
  final List<Map<String, Object?>> photoMapList = await tx.query(
      PlantsPhotoTbl.tableName,
      where: "${PlantsPhotoTbl.dateID} = ?",
      whereArgs: [plantsDateID],
      orderBy: "${PlantsPhotoTbl.photoID} ASC");

  // 植物写真のカラムをパースする。
  final List<PlantsPhoto> photoList = photoMapList.map((map) {
    final int plantsPhotoId = map[PlantsPhotoTbl.photoID] as int;
    final String plantsPhotoUrl = map[PlantsPhotoTbl.photoUrl] as String;

    return PlantsPhoto(
        id: PlantsPhotoId(id: plantsPhotoId), url: plantsPhotoUrl);
  }).toList();

  return PlantsDateDetail(id: PlantsDateId(id: plantsDateID),
      date: plantsDateDate,
      photoList: PlantsPhotoList(photoList));
}