import 'package:flutter/material.dart';
import '../todoConstants/todo_constants.dart';

class AddTaskScreen extends StatelessWidget {
  final Function taskListCallback;

  const AddTaskScreen({
    super.key,
    required this.taskListCallback,
  });

  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;
    return Container(
      //height: MediaQuery.of(context).size.height * 0.70,
      padding: const EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25.0,
              color: kToDoAppColor,
            ),
          ),
          TextField(
            onChanged: (newText) {
              newTaskTitle = newText;
            },
            autofocus: true,
            textAlign: TextAlign.center,
            cursorColor: kToDoAppColor,
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: kToDoAppColor),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: kToDoAppColor),
              ),
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: kToDoAppColor,
            ),
            onPressed: () {
              taskListCallback(newTaskTitle);
            },
            child: const Text(
              'Add',
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
          )
        ],
      ),
    );
  }
}
