import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:plants_management_app/db/plants_db.dart';
import 'package:plants_management_app/list/list.dart';
import 'package:plants_management_app/list/listplants.dart';
import 'package:plants_management_app/plantsdetail/plants_detail_screen.dart';

Future<void> main() async {
  //  日本語ロケールのフォーマッタを初期化する。
  //  (日時のフォーマッタにて日本語ロケールを使用するために必要となる。)
  await initializeDateFormatting('ja');
  WidgetsFlutterBinding.ensureInitialized();
  // ここで初期化。
  await PlantsDb.setupDatabase();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plants_Management_App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFFa6c3ac)),
        useMaterial3: true,
      ),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale("ja")],
      home: const MyHomePage(title: '植物一覧'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var data = <Plants>[];
    for (var i = 0; i < 30; i++) {
      data.add(
          Plants(image: const AssetImage("images/agave.jpg"), title: "Agave"));
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView.builder(
            padding: EdgeInsets.all(8.0),
            itemCount: data.length,
            itemBuilder: (BuildContext context, int index) {
              return PlantsView(
                data: data[index],
                onItemClickListener: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PlantsDetailScreen()));
                },
              );
            }),
      ),
    );
  }
}
