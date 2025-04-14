import 'package:flutter/material.dart';
import 'package:my_app/views/screens/app_bar.dart';
import 'package:my_app/views/screens/search.dart';
import 'package:my_app/widgets/todo_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 229, 225, 236),
      appBar: HomeAppBar(),
      body: Container(
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
                  ToDoItem(),
                  ToDoItem(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
