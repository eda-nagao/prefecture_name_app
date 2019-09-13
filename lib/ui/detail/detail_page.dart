import 'package:flutter/material.dart';
import 'package:prefecture_name_app/ui/detail/view/city_list.dart';
import 'package:prefecture_name_app/ui/detail/view/city_list_bloc.dart';
import 'package:provider/provider.dart';

class DetailPage extends StatelessWidget {
  final String prefectureName;

  DetailPage(this.prefectureName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(prefectureName),
      ),
      body: Provider<CityListBloc>(
        builder: (context) => CityListBloc(prefectureName),
        dispose: (context, bloc) => bloc.dispose(),
        child: CityList(),
      )
    );
  }
}