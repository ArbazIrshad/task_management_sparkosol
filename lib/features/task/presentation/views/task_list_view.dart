import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/bloc/add_task_bloc.dart';
import '../../data/bloc/delete_task_bloc.dart';
import '../../data/bloc/fetch_task_bloc.dart';
import 'add_task_view.dart';

class TaskListView extends StatelessWidget {
  const TaskListView({super.key});

  @override
  Widget build(BuildContext context) {
    final addTaskBloc = BlocProvider.of<AddTaskBloc>(context);
    final fetchTasksBloc = BlocProvider.of<FetchTasksBloc>(context);
    final deleteTaskBloc = BlocProvider.of<DeleteTaskBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Task Manager'),
      ),
      body: BlocBuilder<FetchTasksBloc, FetchTasksState>(
        bloc: fetchTasksBloc,
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state.error != null) {
            return Center(child: Text(state.error!));
          }

          if (state.tasks.isEmpty) {
            return const Center(
              child: Text('No Task Available'),
            );
          }

          return ListView.builder(
            itemCount: state.tasks.length,
            itemBuilder: (context, index) {
              final task = state.tasks[index];
              return Dismissible(
                key: Key(task.id),
                onDismissed: (_) => deleteTaskBloc.add(RemoveTask(id: task.id)),
                child: ListTile(
                  title: Text(task.title),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () =>
                        deleteTaskBloc.add(RemoveTask(id: task.id)),
                  ),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  BlocProvider.value(value: addTaskBloc, child: AddTaskView())),
        ),
        child: const Icon(Icons.add),
      ),
    );
  }
}
