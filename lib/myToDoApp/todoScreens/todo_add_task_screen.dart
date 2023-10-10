import 'package:flutter/material.dart';
import '../todoConstants/todo_constants.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
            onPressed: () {},
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
