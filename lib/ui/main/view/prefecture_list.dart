import 'package:flutter/material.dart';
import 'package:prefecture_name_app/ui/detail/detail_page.dart';
import 'package:prefecture_name_app/ui/main/view/prefecture_list_bloc.dart';
import 'package:provider/provider.dart';

class PrefectureList extends StatelessWidget {
  final _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<PrefectureListBloc>(context);
    return StreamBuilder<List<String>>(
      stream: bloc.value,
      initialData: [],
      builder: (context, snapshot) {
        final list = snapshot.data;
        return ListView(
          padding: const EdgeInsets.all(16.0),
          children: list.map((it) => _buildRow(context, it)).toList(),
        );
      },
    );
  }

  Widget _buildRow(BuildContext context, String prefectureName) {
    return ListTile(
      title: Text(
        prefectureName,
        style: _biggerFont,
      ),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) => DetailPage(prefectureName)
        ));
      },
    );
  }
}