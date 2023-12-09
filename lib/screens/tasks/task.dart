import 'package:flutter/material.dart';
import 'package:just_do_it/screens/widgets/app_bar.dart';

import '../../models/task.dart';

class TaskScreen extends StatefulWidget {
  Task task;
  TaskScreen({required this.task}) {}
  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
          child: Scaffold(
        appBar: CustomeAppBar(title: widget.task.title),
        body: Container(
          color: Colors.grey[300],
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    widget.task.title,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ],
              ),
              Text(widget.task.description)
            ],
          ),
        ),
      )),
    );
  }
}
