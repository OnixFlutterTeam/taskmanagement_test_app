import 'package:flutter/material.dart';
import 'package:flutter_tasks_7_3/app/localization/generated/l10n.dart';
import 'package:flutter_tasks_7_3/app/util/extension/failure_message_extension.dart';
import 'package:flutter_tasks_7_3/core/arch/bloc/base_block_state.dart';
import 'package:flutter_tasks_7_3/core/arch/domain/entity/failure/failure.dart';
import 'package:flutter_tasks_7_3/presentation/screen/task_list_screen/bloc/task_list_screen_imports.dart';
import 'package:flutter_tasks_7_3/presentation/screen/task_list_screen/widget/task_item.dart';
import 'package:flutter_tasks_7_3/presentation/screen/task_list_screen/widget/task_not_found.dart';

class TaskListScreen extends StatefulWidget {
  const TaskListScreen({
    super.key,
  });

  @override
  State<TaskListScreen> createState() => _TaskListScreenState();
}

class _TaskListScreenState extends BaseState<TaskListScreenState,
    TaskListScreenBloc, TaskListScreenSR, TaskListScreen> {
  @override
  void onBlocCreated(BuildContext context, TaskListScreenBloc bloc) {
    super.onBlocCreated(context, bloc);
    bloc.add(const TaskListScreenEvent.getAllTasks());
    bloc.failureStream.listen(
      (failure) {
        _processError(context, failure);
      },
    );
  }

  @override
  Widget buildWidget(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Tasks'),
      ),
      body: blocBuilder(
        builder: (context, state) {
          if (state.tasks.isEmpty) {
            return const TaskNotFound();
          }

          return ListView.separated(
            itemCount: state.tasks.length,
            itemBuilder: (context, index) {
              final item = state.tasks[index];
              return TaskItem(
                task: item,
                onRemove: (task) {
                  blocOf(context)
                      .add(TaskListScreenEvent.removeTask(task: task));
                },
              );
            },
            separatorBuilder: (context, index) {
              return const Divider();
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showTaskCreateAlert(context);
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Future<void> _showTaskCreateAlert(BuildContext blocContext) async {
    final taskInputController = TextEditingController();
    await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Create task'),
          content: TextField(
            controller: taskInputController,
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                final task = taskInputController.text;
                if (task.isEmpty) {
                  return;
                }
                blocOf(blocContext).add(
                  TaskListScreenEvent.addTask(
                    task: task,
                  ),
                );
                Navigator.of(context).pop();
              },
              child: const Text('Add'),
            ),
          ],
        );
      },
    );
  }

  void _processError(
    BuildContext context,
    Failure failure,
  ) {
    final message = context.getTasksFailureMessage(failure);
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Error'),
          content: Text(message),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Ok'),
            ),
          ],
        );
      },
    );
  }
}
