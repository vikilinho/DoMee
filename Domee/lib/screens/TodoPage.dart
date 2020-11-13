import 'package:flutter/material.dart';

class TodoPage extends StatefulWidget {
  @override
  _TodoPageState createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
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
        onPressed: () {},
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
                  "You got 12 tasks to strike through! Move It!",
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
                child: ListView(
                  children: [
                    ListTile(
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
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
