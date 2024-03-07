import 'package:flutter_tasks_7_3/core/arch/domain/entity/common/result.dart';
import 'package:flutter_tasks_7_3/core/arch/domain/entity/failure/failure.dart';
import 'package:flutter_tasks_7_3/core/arch/domain/entity/failure/task_failure.dart';
import 'package:flutter_tasks_7_3/domain/repository/task_repository.dart';
import 'package:flutter_tasks_7_3/domain/usecase/task/add_task_usecase.dart';
import 'package:flutter_tasks_7_3/domain/usecase/task/get_all_tasks_usecase.dart';
import 'package:flutter_tasks_7_3/domain/usecase/task/remove_task_usecase.dart';
import 'package:flutter_tasks_7_3/presentation/screen/task_list_screen/bloc/task_list_screen_imports.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'task_list_screen_bloc_test.mocks.dart';

class MockedFailure implements Failure {
  const MockedFailure();
}

@GenerateNiceMocks([
  MockSpec<TaskRepository>(),
])
void main() {
  group('Get tasks test group', () {
    late TaskRepository taskRepository;
    late TaskListScreenBloc bloc;

    setUp(() {
      taskRepository = MockTaskRepository();
      bloc = TaskListScreenBloc(
        GetAllTasksUseCase(taskRepository),
        AddTaskUseCase(taskRepository),
        RemoveTaskUseCase(taskRepository),
      );
    });

    test('Tasks are requested and returned successfully', () async {
      const mockedTasks = ['Task 1', 'Task 2', 'Task 3'];

      when(taskRepository.getTasks()).thenAnswer(
        (_) async => const Result.success(mockedTasks),
      );

      bloc.add(const TaskListScreenEvent.getAllTasks());

      await expectLater(
        bloc.stream,
        emits(const TaskListScreenStateData(tasks: mockedTasks)),
      );
      verify(taskRepository.getTasks()).called(1);
    });

    test('Tasks are requested and returned with failure', () async {
      const mockedFailure = MockedFailure();

      when(taskRepository.getTasks()).thenAnswer(
        (_) async => const Result.error(failure: mockedFailure),
      );

      bloc.add(const TaskListScreenEvent.getAllTasks());

      await expectLater(
        bloc.failureStream,
        emits(const MockedFailure()),
      );
      expect(bloc.state, const TaskListScreenStateData());
      verify(taskRepository.getTasks()).called(1);
    });

    tearDown(() {
      bloc.close();
    });
  });

  group('Add task test group', () {
    late TaskRepository taskRepository;
    late TaskListScreenBloc bloc;

    setUp(() {
      taskRepository = MockTaskRepository();
      bloc = TaskListScreenBloc(
        GetAllTasksUseCase(taskRepository),
        AddTaskUseCase(taskRepository),
        RemoveTaskUseCase(taskRepository),
      );
    });

    test('Task added successfully, return tasks', () async {
      const mockedTaskName = 'Task 1';
      const mockedTasks = [mockedTaskName, 'Task 2'];

      when(taskRepository.addTask(mockedTaskName))
          .thenAnswer((_) async => const Result.success(true));
      when(taskRepository.getTasks()).thenAnswer(
        (_) async => const Result.success(mockedTasks),
      );

      bloc.add(const TaskListScreenEvent.addTask(task: mockedTaskName));

      await expectLater(
        bloc.stream,
        emits(const TaskListScreenStateData(tasks: mockedTasks)),
      );

      verify(taskRepository.addTask(mockedTaskName)).called(1);
      verify(taskRepository.getTasks()).called(1);
    });

    test('Task is already exist, return TaskAlreadyExistFailure', () async {
      const mockedTaskName = 'Task 1';

      when(taskRepository.addTask(mockedTaskName))
          .thenAnswer((_) async => const Result.success(false));

      bloc.add(const TaskListScreenEvent.addTask(task: mockedTaskName));

      await expectLater(
        bloc.failureStream,
        emits(const TaskAlreadyExistFailure()),
      );
      expect(bloc.state, const TaskListScreenStateData());

      verify(taskRepository.addTask(mockedTaskName)).called(1);
      verifyNever(taskRepository.getTasks());
    });

    test('Task not added, return Failure', () async {
      const mockedTaskName = 'Task 1';

      when(taskRepository.addTask(mockedTaskName)).thenAnswer(
        (_) async => const Result.error(failure: MockedFailure()),
      );

      bloc.add(const TaskListScreenEvent.addTask(task: mockedTaskName));

      await expectLater(
        bloc.failureStream,
        emits(const MockedFailure()),
      );
      expect(bloc.state, const TaskListScreenStateData());

      verify(taskRepository.addTask(mockedTaskName)).called(1);
      verifyNever(taskRepository.getTasks());
    });

    tearDown(() {
      bloc.close();
    });
  });

  group('Remove task test group', () {
    late TaskRepository taskRepository;
    late TaskListScreenBloc bloc;

    setUp(() {
      taskRepository = MockTaskRepository();
      bloc = TaskListScreenBloc(
        GetAllTasksUseCase(taskRepository),
        AddTaskUseCase(taskRepository),
        RemoveTaskUseCase(taskRepository),
      );
    });

    test('Task deleted successfully, return tasks', () async {
      const mockedTaskName = 'Task 1';
      const mockedTasks = [mockedTaskName, 'Task 2'];
      const mockedNewTasks = ['Task 2'];

      when(taskRepository.removeTask(mockedTaskName))
          .thenAnswer((_) async => const Result.success(true));
      when(taskRepository.getTasks()).thenAnswer(
        (_) async => const Result.success(mockedNewTasks),
      );

      bloc.emit(const TaskListScreenStateData(tasks: mockedTasks));

      await Future.delayed(const Duration(milliseconds: 100));

      bloc.add(const TaskListScreenEvent.removeTask(task: mockedTaskName));

      await expectLater(
        bloc.stream,
        emits(const TaskListScreenStateData(tasks: mockedNewTasks)),
      );

      verify(taskRepository.removeTask(mockedTaskName)).called(1);
      verify(taskRepository.getTasks()).called(1);
    });

    test('Task is not deleted, return TaskNotExistFailure', () async {
      const mockedTaskName = 'Task 1';
      const mockedTasks = [mockedTaskName, 'Task 2'];

      when(taskRepository.removeTask(mockedTaskName))
          .thenAnswer((_) async => const Result.success(false));

      bloc
        ..emit(const TaskListScreenStateData(tasks: mockedTasks))
        ..add(const TaskListScreenEvent.removeTask(task: mockedTaskName));

      expect(bloc.state, const TaskListScreenStateData(tasks: mockedTasks));

      await expectLater(bloc.failureStream, emits(const TaskNotExistFailure()));

      verify(taskRepository.removeTask(mockedTaskName)).called(1);
      verifyNever(taskRepository.getTasks());
    });

    test('Task is not deleted, return Failure', () async {
      const mockedTaskName = 'Task 1';
      const mockedTasks = [mockedTaskName, 'Task 2'];

      when(taskRepository.removeTask(mockedTaskName)).thenAnswer(
        (_) async => const Result.error(failure: MockedFailure()),
      );

      bloc
        ..emit(const TaskListScreenStateData(tasks: mockedTasks))
        ..add(const TaskListScreenEvent.removeTask(task: mockedTaskName));

      expect(bloc.state, const TaskListScreenStateData(tasks: mockedTasks));

      await expectLater(bloc.failureStream, emits(const MockedFailure()));

      verify(taskRepository.removeTask(mockedTaskName)).called(1);
      verifyNever(taskRepository.getTasks());
    });

    tearDown(() {
      bloc.close();
    });
  });
}
