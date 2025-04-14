import 'package:flutter/material.dart';
import 'package:my_app/model/todo.dart';

class ToDoItem extends StatelessWidget {
  final ToDo item;
  final Function onToDoState;
  final Function onDeleteItem;

  const ToDoItem({
    super.key,
    required this.item,
    required this.onToDoState,
    required this.onDeleteItem,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: ListTile(
          onTap: () {
            onToDoState(item);
          },
          contentPadding: EdgeInsets.symmetric(horizontal: 18, vertical: 2),
          leading:
              item.isDone
                  ? Icon(Icons.check_box, color: Colors.blue[400])
                  : Icon(
                    Icons.check_box_outline_blank,
                    color: Colors.blue[400],
                  ),
          tileColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          title: Text(
            "${item.description}",
            style: TextStyle(
              fontSize: 14,
              color: Colors.black87,
              decoration:
                  item.isDone
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
            ),
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
              onPressed: () {
                onDeleteItem(item.id);
              },
              icon: Icon(Icons.delete, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
