import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:todaydo/component/tasktile.dart';
import 'package:provider/provider.dart';
import 'package:todaydo/models/task_data.dart';
import '../models/task_data.dart';
import '../models/task.dart';
import '../models/task_data.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
            itemCount: taskData.tasks.length,
            itemBuilder: (context, index) {
              return TaskTile(
                isChecked: taskData.tasks[index].isDone,
                taskTitle: taskData.tasks[index].name,
                CheckBoxState: (newValue) {
                  taskData.updateTask(taskData.tasks[index]);
                },
                ListTileDelete: () {
                  taskData.deleteTask(taskData.tasks[index]);
                },
              );
            });
      },
    );
  }
}
