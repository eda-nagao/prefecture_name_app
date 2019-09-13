import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prefecture_name_app/service_locator.dart';
import 'package:prefecture_name_app/ui/detail/detail_page.dart';

class PrefectureListBloc {
  final _streamController = StreamController<List<String>>();
  Stream<List<String>> get value => _streamController.stream;

  PrefectureListBloc() {
    _initValue();
  }

  void _initValue() async {
    final res = await ServiceLocator().getRepository().getPrefectureNames();
    _streamController.sink.add(res);
  }

  void dispose() {
    _streamController.close();
  }
}