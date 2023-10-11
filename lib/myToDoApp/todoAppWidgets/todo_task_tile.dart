import 'package:flutter/material.dart';
import '../todoConstants/todo_constants.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    super.key,
    required this.isChecked,
    required this.taskTitle,
    required this.toggleCheckboxState,
    required this.longPressCallback,
  });

  final bool isChecked;
  final String taskTitle;
  final Function(void) toggleCheckboxState;
  final Function() longPressCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration:
              isChecked ? TextDecoration.lineThrough : TextDecoration.none,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: kToDoAppColor,
        onChanged: toggleCheckboxState,
      ),
    );
  }
}
