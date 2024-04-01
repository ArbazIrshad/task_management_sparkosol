// bloc/add_task_bloc.dart

import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/usecases/add_task_use_case.dart';
import 'fetch_task_bloc.dart';

part 'add_task_bloc.freezed.dart';

sealed class AddTaskEvent {}

final class InsertingTaskEvent extends AddTaskEvent {
  final String title;

  InsertingTaskEvent({required this.title});
}

@freezed
class AddTaskState with _$AddTaskState {
  const factory AddTaskState({
    required String title,
    @Default(false) bool isLoading,
    String? error,
  }) = _AddTaskState;
}

class AddTaskBloc extends Bloc<AddTaskEvent, AddTaskState> {
  final AddTaskUseCase addTaskUseCase;
  final FetchTasksBloc fetchTasksBloc;

  AddTaskBloc(this.addTaskUseCase, this.fetchTasksBloc)
      : super(const AddTaskState(title: '')) {
    on<InsertingTaskEvent>(
      (event, emit) async {
        if (event.title.isEmpty) return;
        final title = event.title;
        emit(state.copyWith(isLoading: true));
        await addTaskUseCase.execute(title);
        emit(const AddTaskState(title: '')); // Clear title after success
        debugPrint('FETCH TASK : $title');
        fetchTasksBloc.add(FetchTasksEvent.fetchTasks);
      },
    );
  }
}
