import 'package:flutter/material.dart';

class TaskItem extends StatelessWidget {
  final String task;
  final ValueChanged<String> onRemove;

  const TaskItem({
    required this.task,
    required this.onRemove,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(task),
      leading: const Icon(Icons.task),
      trailing: IconButton(
        onPressed: () {
          onRemove(task);
        },
        icon: const Icon(
          Icons.delete_forever,
          color: Colors.red,
        ),
      ),
    );
  }
}
