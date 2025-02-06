import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:plants_management_app/list/list.dart';
import 'package:plants_management_app/plantsdetail/Utils.dart';

class PlantsDetailScreen extends StatefulWidget {
  const PlantsDetailScreen({super.key});

  @override
  State<PlantsDetailScreen> createState() => _PlantsDetailScreenState();
}

class _PlantsDetailScreenState extends State<PlantsDetailScreen> {
  final List<String> imageUrls = [
    'https://th.bing.com/th/id/OIP.DgvsGThp3JvxUudFAaVVVwAAAA?w=235&h=220&c=7&r=0&o=5&dpr=1.5&pid=1.7',
    'https://cdn.pixabay.com/photo/2015/12/09/17/11/vegetables-1085063_1280.jpg',
    'https://cdn.pixabay.com/photo/2016/08/11/08/04/vegetables-1584999_1280.jpg',
    'https://cdn.pixabay.com/photo/2015/05/30/01/18/vegetables-790022_1280.jpg',
    'https://cdn.pixabay.com/photo/2017/06/09/16/39/carrots-2387394_1280.jpg',
    'https://th.bing.com/th/id/OIP.xQv2h1WqgbCY1v32XE7D7wHaE9?w=215&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7'
  ];

  @override
  void initiate() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var data = <PhotoInf>[];
    for (var i = 0; i < 30; i++) {
      data.add(PhotoInf(plantsID: "a", dateID: "a"));
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("name"),
      ),
      body: Center(
          child: FutureBuilder<List<String>>(
            future: getImages(), // 非同期関数を指定
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator(); // 非同期処理中
              } else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}'); // エラー発生時
              } else if (snapshot.hasData) {
                var data = snapshot.data!;
                return ListView.builder(
                  padding: EdgeInsets.all(8.0),
                  itemCount: data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return PhotoViewContainer(date: "n月m日", imageUrls: data);
                  },
                ); // データ取得完了時
              } else {
                return Text('No data available'); // データがない場合
              }
            },
          )),
    );
  }
}

class GalleryScreen extends StatelessWidget {
  final List<String> imageUrls;
  final int initialIndex;

  const GalleryScreen({
    Key? key,
    required this.imageUrls,
    required this.initialIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.close,
            color: Colors.white,
          ),
        ),
        Expanded(
          child: PhotoViewGallery.builder(
            itemCount: imageUrls.length,
            builder: (context, index) {
              return PhotoViewGalleryPageOptions(
                imageProvider: NetworkImage(imageUrls[index]),
                initialScale: PhotoViewComputedScale.contained,
              );
            },
            pageController: PageController(initialPage: initialIndex),
            backgroundDecoration: const BoxDecoration(
              color: Colors.transparent,
            ),
          ),
        ),
      ],
    );
  }
}

class PhotoViewContainer extends StatelessWidget {
  final List<String> imageUrls;
  final String date;

  const PhotoViewContainer(
      {Key? key, required this.imageUrls, required this.date})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Text(
        date,
        style: TextStyle(fontSize: 40),
      ),
      SizedBox(
          width: MediaQuery.of(context).size.width - 50,
          height: 300,
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4),
            itemCount: imageUrls.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () async {
                  openPhotoViewGallery(context, index);
                },
                child: Image.network(imageUrls[index], fit: BoxFit.cover),
              );
            },
          ))
    ]);
  }

  Future<void> openPhotoViewGallery(
      BuildContext context, int initialIndex) async {
    await showDialog(
      context: context,
      builder: (context) {
        return GalleryScreen(imageUrls: imageUrls, initialIndex: initialIndex);
      },
    );
  }
}
