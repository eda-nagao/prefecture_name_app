import 'package:flutter/material.dart';
import 'package:prefecture_name_app/ui/main/main_page.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AppState();
}

class AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      home: MainPage(),
    );
  }
}