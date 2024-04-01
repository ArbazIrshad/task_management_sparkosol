import 'package:flutter/foundation.dart';

import '../repositories/task_repository.dart';

class AddTaskUseCase {
  final TaskRepository taskRepository;

  AddTaskUseCase(this.taskRepository);

  Future<void> execute(String title) async {
    debugPrint('TITLE :$title');
    await taskRepository.addTask(title);
  }
}
