
import 'package:Domee/widgets/task_tiles.dart';
import 'package:flutter/material.dart';

class TaskList extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskTile(),
        TaskTile()
      ],
    );
  }
}
