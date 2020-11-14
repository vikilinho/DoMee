import 'package:Domee/screens/addTask.dart';
import 'package:Domee/widgets/task_list.dart';

import 'package:flutter/material.dart';

class TodoPage extends StatefulWidget {
  
  @override
  _TodoPageState createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  Widget buildBottomSheet(BuildContext context) => AddTask();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {
          showModalBottomSheet(context: context, builder:  buildBottomSheet);
        },
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.list, size: 30, color: Colors.purple)),
                SizedBox(height: 10),
                Text(
                  "DoMee",
                  style: TextStyle(fontSize: 50),
                ),
                SizedBox(height: 10),
                Text(
                  " 12 tasks to strike through! Move It!",
                  style: TextStyle(fontSize: 25),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Expanded(
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: Colors.white,
                ),
                child: TaskList()),
          ),
        ],
      ),
    );
  }
}

