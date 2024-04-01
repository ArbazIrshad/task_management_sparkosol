import '../repositories/task_repository.dart';
import '../utils/typdef.dart';

class FetchTasksUseCase {
  final TaskRepository taskRepository;

  FetchTasksUseCase(this.taskRepository);

  Future<TaskList> execute() async {
    return await taskRepository.getTasks();
  }
}
