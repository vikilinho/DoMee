
import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "Fix a sturborn bug",
        style: TextStyle(color: Colors.purple),
      ),
      trailing: Checkbox(value: true,
      onChanged: ( txt){
        print("do nothing ");
      },
      activeColor: Colors.purple,
      ),
    );
  }
}