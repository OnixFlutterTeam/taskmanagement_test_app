import 'package:flutter/material.dart';
import 'package:flutter_tasks_7_3/core/arch/domain/entity/common/result.dart';
import 'package:flutter_tasks_7_3/domain/usecase/task/add_task_usecase.dart';
import 'package:flutter_tasks_7_3/domain/usecase/task/get_all_tasks_usecase.dart';
import 'package:flutter_tasks_7_3/domain/usecase/task/remove_task_usecase.dart';
import 'package:flutter_tasks_7_3/presentation/screen/task_list_screen/bloc/task_list_screen_bloc.dart';
import 'package:flutter_tasks_7_3/presentation/screen/task_list_screen/bloc/task_list_screen_imports.dart';
import 'package:flutter_tasks_7_3/presentation/screen/task_list_screen/task_list_screen.dart';
import 'package:flutter_tasks_7_3/presentation/screen/task_list_screen/widget/task_item.dart';
import 'package:flutter_tasks_7_3/presentation/screen/task_list_screen/widget/task_not_found.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'task_list_screen_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<GetAllTasksUseCase>(),
  MockSpec<AddTaskUseCase>(),
  MockSpec<RemoveTaskUseCase>(),
])
void main() {
  late TaskListScreenBloc bloc;
  late GetAllTasksUseCase getAllTasksUseCase;
  late AddTaskUseCase addTaskUseCase;
  late RemoveTaskUseCase removeTaskUseCase;

  setUp(() {
    getAllTasksUseCase = MockGetAllTasksUseCase();
    addTaskUseCase = MockAddTaskUseCase();
    removeTaskUseCase = MockRemoveTaskUseCase();

    bloc = TaskListScreenBloc(
      getAllTasksUseCase,
      addTaskUseCase,
      removeTaskUseCase,
    );

    GetIt.instance.registerFactory<TaskListScreenBloc>(() => bloc);
  });

  testWidgets('The dialog opens, the task is created successfully',
      (tester) async {
    when(getAllTasksUseCase()).thenAnswer(
      (_) async => const Result.success([]),
    );

    when(addTaskUseCase(task: 'Task 1')).thenAnswer(
      (_) async => const Result.success(['Task 1']),
    );

    await tester.pumpWidget(
      const MaterialApp(
        home: TaskListScreen(),
      ),
    );

    await tester.runAsync(() async {
      await tester.pumpAndSettle();
      await tester.tap(find.byType(FloatingActionButton));
      await tester.pumpAndSettle();
      final field = find.byType(TextField);
      await tester.enterText(field, 'Task 1');
      final addButton = find.byType(ElevatedButton);
      await tester.tap(addButton);
      await tester.pumpAndSettle();
      final task = find.byType(TaskItem);
      expect(task, findsOneWidget);
    });
  });

  testWidgets('Task deletion is successful, TaskNotFound is returned',
      (tester) async {
    when(getAllTasksUseCase()).thenAnswer(
      (_) async => const Result.success(['Task 1']),
    );

    when(removeTaskUseCase(task: 'Task 1')).thenAnswer(
      (_) async => const Result.success([]),
    );

    await tester.pumpWidget(
      const MaterialApp(
        home: TaskListScreen(),
      ),
    );

    await tester.runAsync(() async {
      await tester.pumpAndSettle();
      final button = find.byType(IconButton);
      await tester.tap(button);
      await tester.pumpAndSettle();
      final emptyState = find.byType(TaskNotFound);
      expect(emptyState, findsOneWidget);
    });
  });

  tearDown(() {
    GetIt.I.resetScope();
  });
}
