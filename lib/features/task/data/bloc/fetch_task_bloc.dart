import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_management/features/task/data/models/task.dart';

import '../../domain/usecases/fetch_task_use_case.dart';

part 'fetch_task_bloc.freezed.dart';

enum FetchTasksEvent { fetchTasks }

@freezed
class FetchTasksState with _$FetchTasksState {
  const factory FetchTasksState({
    required List<Task> tasks,
    @Default(false) bool isLoading,
    String? error,
  }) = _FetchTasksState;
}

class FetchTasksBloc extends Bloc<FetchTasksEvent, FetchTasksState> {
  final FetchTasksUseCase fetchTasksUseCase;

  FetchTasksBloc(this.fetchTasksUseCase)
      : super(const FetchTasksState(tasks: [])) {
    on<FetchTasksEvent>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final tasks = await fetchTasksUseCase.execute();
      emit(state.copyWith(tasks: tasks, isLoading: false));
    });
  }
}
