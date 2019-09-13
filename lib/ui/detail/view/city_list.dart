import 'package:flutter/material.dart';
import 'package:prefecture_name_app/model/city.dart';
import 'package:prefecture_name_app/ui/detail/view/city_list_bloc.dart';
import 'package:provider/provider.dart';

class CityList extends StatelessWidget {
  final _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<CityListBloc>(context);
    return StreamBuilder<List<City>>(
      stream: bloc.value,
      initialData: [],
      builder: (context, snapshot) {
        final list = snapshot.data;
        return ListView(
          padding: const EdgeInsets.all(16.0),
          children: list.map((it) => _buildRow(it)).toList(),
        );
      },
    );
  }

  Widget _buildRow(City city) {
    return ListTile(
      title: Text(
        city.name,
        style: _biggerFont,
      ),
      subtitle: Text(city.kana),
    );
  }
}