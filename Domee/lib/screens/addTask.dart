import 'package:flutter/material.dart';

class AddTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          color: Colors.white),
      child: Column(
        children: [
          Text(
            "Add Task",
            style: TextStyle(color: Colors.purple, fontSize: 25, fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 10,), 
          TextField(
            autofocus: true,
            decoration: InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.always,
              alignLabelWithHint: true,
              labelText: "Task",
              labelStyle: TextStyle(color: Colors.purple, fontSize: 25),
              hintText: "Enter your task for today", hintStyle: TextStyle(color: Colors.black45),
              fillColor: Colors.purple,
            ),
          ),
          ButtonTheme(
          buttonColor: Colors.purple,
          child: TextButton(onPressed: null, child: Text("Enter")))
        ],
      ),
    );
  }
}
