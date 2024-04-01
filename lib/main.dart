import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_management/features/task/data/repositories/memory_task_repository.dart';
import 'package:task_management/features/task/presentation/views/task_list_view.dart';

import 'features/task/data/bloc/add_task_bloc.dart';
import 'features/task/data/bloc/delete_task_bloc.dart';
import 'features/task/data/bloc/fetch_task_bloc.dart';
import 'features/task/domain/usecases/add_task_use_case.dart';
import 'features/task/domain/usecases/delete_task_usecase.dart';
import 'features/task/domain/usecases/fetch_task_use_case.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final taskRepository = MemoryTaskRepository();

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: BlocProvider<FetchTasksBloc>(
        create: (context) => FetchTasksBloc(FetchTasksUseCase(taskRepository)),
        child: MultiBlocProvider(
          providers: [
            BlocProvider<AddTaskBloc>(
              create: (context) => AddTaskBloc(
                  AddTaskUseCase(taskRepository), BlocProvider.of(context)),
            ),
            BlocProvider<DeleteTaskBloc>(
              create: (context) => DeleteTaskBloc(
                  DeleteTaskUseCase(taskRepository), BlocProvider.of(context)),
            ),
          ],
          child: const TaskListView(),
        ),
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
