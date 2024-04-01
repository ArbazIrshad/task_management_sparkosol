import '../repositories/task_repository.dart';

class DeleteTaskUseCase {
  final TaskRepository taskRepository;

  DeleteTaskUseCase(this.taskRepository);

  Future<void> execute(String id) async {
    await taskRepository.deleteTask(id);
  }
}
