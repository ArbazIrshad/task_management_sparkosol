import '../../data/models/task.dart';

abstract class TaskRepository {
  Future<List<Task>> getTasks();
  Future<void> addTask(String title);
  Future<void> deleteTask(String id);
}
