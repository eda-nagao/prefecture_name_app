import 'package:flutter/material.dart';
import 'package:prefecture_name_app/ui/main/view/prefecture_list.dart';
import 'package:prefecture_name_app/ui/main/view/prefecture_list_bloc.dart';
import 'package:provider/provider.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('都道府県一覧'),
      ),
      body: Provider<PrefectureListBloc>(
        builder: (context) => PrefectureListBloc(),
        dispose: (context, bloc) => bloc.dispose(),
        child: PrefectureList(),
      ),
    );
  }
}