import 'package:flutter/material.dart';

class SearchBarHome extends StatelessWidget {
  final Function(String) onChanged;

  const SearchBarHome({super.key, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: searchBox(),
    );
  }

  Widget searchBox() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          prefixIcon: Icon(Icons.search, color: Colors.black, size: 20),
          prefixIconConstraints: BoxConstraints(maxHeight: 20, minWidth: 25),
          border: InputBorder.none,
          hintText: "Search a task here",
          hintStyle: TextStyle(color: const Color.fromARGB(188, 42, 42, 43)),
        ),
      ),
    );
  }
}
