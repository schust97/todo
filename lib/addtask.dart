// ignore_for_file: prefer_const_constructors

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import './models/task_data.dart';
import 'package:provider/provider.dart';

class AddTask extends StatelessWidget {
  final Function addTaskCallback;

  AddTask(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;

    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("ADD TASK",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 122, 10))),
          SizedBox(height: 10),
          TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newTaskTitle = newText;
              }),
          SizedBox(height: 30),
          TextButton(
              onPressed: () {
                Provider.of<TaskData>(context, listen: false)
                    .addTask(newTaskTitle!);
                Navigator.pop(context);
              },
              style: TextButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 0, 122, 10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "ADD",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ))
        ],
      ),
    );
  }
}
