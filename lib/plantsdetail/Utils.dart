import 'package:path_provider/path_provider.dart';
import 'dart:io';


Future<List<String>> getImages() async {
  final directory = await getApplicationDocumentsDirectory();
  var dir = Directory('${directory.parent.path}/images');
  List<String> imageUrls2=[];
  try {
    var dirList = dir.list();
    await for (final FileSystemEntity f in dirList) {
      if (f is File) {
        print('Found file ${f.path}');
        imageUrls2.add(f.path);
      } else if (f is Directory) {
        print('Found dir ${f.path}');
      }
    }
  } catch (e) {
    print(e.toString());
  }
  return imageUrls2;
}



///return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text("name"),
//       ),
//       body: Center(
//           child: FutureBuilder<List<String>>(
//         future: getImages(), // 非同期関数を指定
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return CircularProgressIndicator(); // 非同期処理中
//           } else if (snapshot.hasError) {
//             return Text('Error: ${snapshot.error}'); // エラー発生時
//           } else if (snapshot.hasData) {
//             var data = snapshot.data!;
//             return ListView.builder(
//               padding: EdgeInsets.all(8.0),
//               itemCount: data.length,
//               itemBuilder: (BuildContext context, int index) {
//                 return PhotoViewContainer(date: "n月m日", imageUrls: data);
//               },
//             ); // データ取得完了時
//           } else {
//             return Text('No data available'); // データがない場合
//           }
//         },
//       )),
//     );
///