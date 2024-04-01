import 'package:task_management/features/task/data/models/task.dart';
import 'package:uuid/uuid.dart';

import '../../domain/repositories/task_repository.dart';

class MemoryTaskRepository implements TaskRepository {
  final List<Task> tasks = [];
  @override
  Future<void> addTask(String title) async {
    tasks.add(Task(id: const Uuid().v4(), title: title));
  }

  @override
  Future<void> deleteTask(String id) async {
    tasks.removeWhere((element) => element.id == id);
  }

  @override
  Future<List<Task>> getTasks() async {
    return tasks;
  }
}
