import 'package:flutter/material.dart';
import 'package:my_app/model/todo.dart';
import 'package:my_app/views/screens/app_bar.dart';
import 'package:my_app/views/screens/search.dart';
import 'package:my_app/widgets/todo_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final items = ToDo.toDoList();

  final _todoController = TextEditingController();

  void _handleToDoState(ToDo item) {
    setState(() {
      item.isDone = !item.isDone;
    });
  }

  void _deleteToDoItem(String id) {
    setState(() {
      items.removeWhere((item) => item.id == id);
    });
  }

  void _addNewTask(String toDo) {
    setState(() {
      items.add(
        ToDo(
          id: DateTime.now().millisecondsSinceEpoch.toString(),
          description: toDo,
        ),
      );
    });
    _todoController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 229, 225, 236),
      appBar: HomeAppBar(),
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            child: Column(
              children: [
                searchBox(),
                Expanded(
                  child: ListView(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 50, bottom: 20),
                        child: Text(
                          "All ToDo Tasks",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      for (ToDo item in items)
                        ToDoItem(
                          item: item,
                          onToDoState: _handleToDoState,
                          onDeleteItem: _deleteToDoItem,
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 45,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    margin: EdgeInsets.only(bottom: 15, right: 10, left: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 0.0),
                          blurRadius: 10.0,
                          spreadRadius: 0.0,
                        ),
                      ],
                    ),
                    child: TextField(
                      controller: _todoController,
                      decoration: InputDecoration(
                        hintText: "Add a new task here",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 15, right: 10),
                  child: ElevatedButton(
                    onPressed: () {
                      _addNewTask(_todoController.text);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      minimumSize: Size(45, 45),
                      elevation: 10,
                    ),
                    child: Text(
                      "+",
                      style: TextStyle(fontSize: 23, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
