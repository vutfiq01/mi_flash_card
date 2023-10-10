import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text('My task'),
      trailing: Checkbox(
        value: false,
        onChanged: (value) {
          value = true;
        },
      ),
    );
  }
}
