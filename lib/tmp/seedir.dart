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
      title: 'Flutter Directory Structure',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DirectoryStructureScreen(),
    );
  }
}

class DirectoryStructureScreen extends StatefulWidget {
  @override
  _DirectoryStructureScreenState createState() => _DirectoryStructureScreenState();
}

class _DirectoryStructureScreenState extends State<DirectoryStructureScreen> {
  List<String> _entries = [];

  @override
  void initState() {
    super.initState();
    _listFilesAndDirectories();
  }

  Future<void> _listFilesAndDirectories() async {
    final directory = await getApplicationDocumentsDirectory();
    final dirPath = directory.path;
    final dir = Directory(dirPath);
    List<String> entries = [];

    try {
      await for (var entity in dir.list(recursive: true, followLinks: false)) {
        entries.add(entity.path);
      }
    } catch (e) {
      print('Error reading directory: $e');
    }

    setState(() {
      _entries = entries;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Directory Structure'),
      ),
      body: _entries.isEmpty
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
        itemCount: _entries.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_entries[index]),
          );
        },
      ),
    );
  }
}
