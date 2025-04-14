import 'package:flutter/material.dart';

class ToDoItem extends StatelessWidget {
  const ToDoItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 18, vertical: 2),
          leading: Icon(Icons.check_box, color: Colors.blue[400]),
          tileColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          onTap: () {},
          title: Text(
            "Some Text Here",
            style: TextStyle(fontSize: 14, color: Colors.black87),
          ),
          trailing: Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(5),
              color: Colors.red[700],
            ),
            child: IconButton(
              iconSize: 22,
              padding: EdgeInsets.all(0),
              onPressed: () {},
              icon: Icon(Icons.delete, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
