import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.70,
      padding: const EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25.0,
              color: Color(0xFF0163F8),
            ),
          ),
          const TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            cursorColor: Color(0xFF0163F8),
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF0163F8)),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF0163F8)),
              ),
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: const Color(0xFF0163F8), // Background Color
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
