import 'package:flutter_tasks_7_3/core/arch/data/local/prefs/base_preferences.dart';
import 'package:flutter_tasks_7_3/data/source/local/preferences_source/preferences_keys.dart';
import 'package:flutter_tasks_7_3/data/source/local/preferences_source/preferences_source.dart';

class PreferencesSourceImpl implements PreferencesSource {
  final BasePreferences _preferences;

  PreferencesSourceImpl(this._preferences);

  @override
  Future<bool> addTask(String task) async {
    final tasks = await getTasks();
    if (!tasks.contains(task)) {
      final newTasks = List<String>.from(tasks)..add(task);
      await _preferences.put<List<String>>(PrefsKeys.kTasks, newTasks);
      return true;
    }
    return false;
  }

  @override
  Future<List<String>> getTasks() {
    return _preferences.get<List<String>>(PrefsKeys.kTasks, List.empty());
  }

  @override
  Future<bool> removeTask(String task) async {
    final tasks = await getTasks();
    if (tasks.contains(task)) {
      final newTasks = List<String>.from(tasks)..remove(task);
      await _preferences.put<List<String>>(PrefsKeys.kTasks, newTasks);
      return true;
    }
    return false;
  }
}
