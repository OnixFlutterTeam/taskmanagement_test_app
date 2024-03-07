//@formatter:off

import 'package:flutter_tasks_7_3/presentation/screen/task_list_screen/task_list_screen.dart';
import 'package:go_router/go_router.dart';

//{imports end}

class AppRouter {
  static const _initialLocation = '/task_list';

  static const _taskList = '/task_list';
  //{consts end}

  static final AppRouter _instance = AppRouter._privateConstructor();
  static late GoRouter router;

  static String get taskListScreen => 'TaskListScreen';
  //{getters end}

  AppRouter._privateConstructor() {
    _initialize();
  }

  factory AppRouter.init() {
    return _instance;
  }

  void _initialize({String initialLocation = _initialLocation}) {
    router = GoRouter(
      initialLocation: initialLocation,
      routes: <GoRoute>[
        GoRoute(
          path: _taskList,
          name: taskListScreen,
          builder: (context, state) => const TaskListScreen(),
        ),
        //{routes end}
      ],
    );
  }
}
