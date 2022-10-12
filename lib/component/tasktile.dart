// ignore_for_file: non_constant_identifier_names, duplicate_ignore

import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  // const TaskTile({super.key});
  String taskTitle;

  final bool isChecked;
  // ignore: non_constant_identifier_names
  final void Function(bool?) CheckBoxState;
  final void Function() ListTileDelete;
  // ignore: non_constant_identifier_names
  TaskTile(
      {super.key,
      required this.isChecked,
      required this.taskTitle,
      required this.CheckBoxState,
      required this.ListTileDelete});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.teal,
        value: isChecked,
        onChanged: CheckBoxState,
      ),
      onLongPress: ListTileDelete,
    );
  }
}
