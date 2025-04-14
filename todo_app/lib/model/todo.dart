class ToDo {
  final String? id;
  final String? description;
  bool isDone;

  ToDo({required this.id, required this.description, this.isDone = false});

  static List<ToDo> toDoList() {
    return [
      ToDo(id: '01', description: 'Study Flutter for 2 hours', isDone: true),
      ToDo(id: '02', description: 'Learn Dart Sintaxe', isDone: true),
      ToDo(id: '03', description: 'Study about MVVM'),
      ToDo(id: '04', description: 'Walk with dog'),
      ToDo(id: '05', description: 'Check Emails'),
    ];
  }
}
