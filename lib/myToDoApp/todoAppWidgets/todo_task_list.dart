import 'package:flutter/material.dart';
import '../todoModels/todo_task_model.dart';
import 'todo_task_tile.dart';

class TaskList extends StatefulWidget {
  final List<Task> tasks;

  const TaskList({
    super.key,
    required this.tasks,
  });

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          isChecked: widget.tasks[index].isDone,
          taskTitle: widget.tasks[index].name,
          toggleCheckboxState: (checkBoxState) {
            setState(
              () {
                widget.tasks[index].toggleDone();
              },
            );
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
