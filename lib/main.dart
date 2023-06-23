import 'package:flutter/material.dart';
import 'package:mobileuas/getstartedpage.dart';
import 'package:mobileuas/start.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AppLoader(),
    );
  }
}

class AppLoader extends StatefulWidget {
  @override
  _AppLoaderState createState() => _AppLoaderState();
}

class _AppLoaderState extends State<AppLoader> {
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    // Menjalankan proses loading selama beberapa detik
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading ? startPage() : getstartedpage(),
    );
  }
}
