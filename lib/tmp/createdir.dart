import 'package:flutter/material.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Create Directory Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CreateDirectoryScreen(),
    );
  }
}

class CreateDirectoryScreen extends StatefulWidget {
  @override
  _CreateDirectoryScreenState createState() => _CreateDirectoryScreenState();
}

class _CreateDirectoryScreenState extends State<CreateDirectoryScreen> {
  String _statusMessage = 'Press the button to create a directory';

  Future<void> _createDirectory() async {
    final directory = await getApplicationDocumentsDirectory();
    final dirPath = '${directory.path}/new_folder';
    final newDir = Directory(dirPath);

    try {
      if (await newDir.exists()) {
        setState(() {
          _statusMessage = 'Directory already exists';
        });
      } else {
        await newDir.create();
        setState(() {
          _statusMessage = 'Directory created successfully';
        });
      }
    } catch (e) {
      print('Error creating directory: $e');
      setState(() {
        _statusMessage = 'Error creating directory';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Directory Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_statusMessage),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _createDirectory,
              child: Text('Create Directory'),
            ),
          ],
        ),
      ),
    );
  }
}
