import 'package:flutter/material.dart';
import 'package:mi_flash_card/myToDoApp/todoConstants/todo_constants.dart';
import '../todoAppWidgets/todo_task_list.dart';
import '../todoModels/todo_task_model.dart';
import 'todo_add_task_screen.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({super.key});

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  List<Task> tasks = [
    Task(name: 'Learn Flutter 1'),
    Task(name: 'Learn Flutter 2'),
    Task(name: 'Learn Flutter 3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kToDoAppColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: AddTaskScreen(taskListCallback: (newTaskTitle) {
                  setState(() {
                    tasks.add(Task(name: newTaskTitle));
                  });
                  Navigator.pop(context);
                }),
              ),
            ),
            isScrollControlled: true,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20.0),
              ),
            ),
          );
        },
        backgroundColor: kToDoAppColor,
        child: const Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(
              top: 60.0,
              left: 30.0,
              right: 30.0,
              bottom: 30.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 40.0,
                  child: Icon(
                    Icons.list,
                    size: 45.0,
                    color: kToDoAppColor,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Text(
                  'Taskery',
                  style: TextStyle(
                    fontSize: 60.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '${tasks.length} Tasks',
                  style: const TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: TaskList(
                tasks: tasks,
              ),
            ),
          )
        ],
      ),
    );
  }
}
