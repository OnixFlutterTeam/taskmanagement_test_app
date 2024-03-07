abstract class PreferencesSource {
  Future<List<String>> getTasks();

  Future<bool> addTask(String task);

  Future<bool> removeTask(String task);
}
