// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:todaydo/addtask.dart';
import 'package:todaydo/component/tasklist.dart';
import 'package:todaydo/component/tasktile.dart';
import 'package:provider/provider.dart';

import 'models/task.dart';
import 'models/task_data.dart';

class TodayDo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 161, 255, 164),
      floatingActionButton: FloatingActionButton(
        onPressed: ((() {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) => SingleChildScrollView(
              child: AddTask(
                (newTaskTitle) {},
              ),
            ),
          );
        })),
        backgroundColor: Color.fromARGB(255, 48, 126, 50),
        child: Icon(
          Icons.add,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 60,
          bottom: 80,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Icon(
                  Icons.playlist_add_check,
                  size: 40,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "TodayDo",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                ),
              ],
            ),
            Text(
              "${Provider.of<TaskData>(context).tasks.length} task",
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 5, bottom: 5),
                  child: TaskList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
