import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/usecases/delete_task_usecase.dart';
import 'fetch_task_bloc.dart';

part 'delete_task_bloc.freezed.dart';

sealed class DeleteTaskEvent {}

final class RemoveTask extends DeleteTaskEvent {
  final String id;

  RemoveTask({required this.id});
}

@freezed
class DeleteTaskState with _$DeleteTaskState {
  const factory DeleteTaskState({String? id}) = _DeleteTaskState;
}

class DeleteTaskBloc extends Bloc<DeleteTaskEvent, DeleteTaskState> {
  final DeleteTaskUseCase deleteTaskUseCase;

  final FetchTasksBloc fetchTasksBloc;

  DeleteTaskBloc(this.deleteTaskUseCase, this.fetchTasksBloc)
      : super(const DeleteTaskState()) {
    on<RemoveTask>((event, emit) async {
      await deleteTaskUseCase.execute(event.id);
      fetchTasksBloc.add(FetchTasksEvent.fetchTasks);
    });
  }
}
