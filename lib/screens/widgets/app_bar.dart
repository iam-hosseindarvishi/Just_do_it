import 'package:flutter/material.dart';

AppBar CustomeAppBar(
    {required String title, List<Widget>? action, bool centerTitle = true}) {
  return AppBar(
    backgroundColor: Colors.grey[850],
    title: Text(title),
    centerTitle: centerTitle,
    actions: action,
  );
}
