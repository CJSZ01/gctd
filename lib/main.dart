import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gctd/core/inject/rest_client_inject.dart';
import 'package:gctd/core/inject/tasks_inject.dart';
import 'package:gctd/presentation/pages/todo/todo_cubit.dart';
import 'package:gctd/presentation/pages/todo/todo_page.dart';
import 'package:get_it/get_it.dart';

void main() {
  final getIt = GetIt.instance;
  RestClientInject.inject(getIt);
  TasksInject.inject(getIt);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final GetIt getIt = GetIt.instance;
    return MaterialApp(
      home: BlocProvider(
        create: (context) => TodoCubit(
          createTaskUsecase: getIt.get(),
          getTasksUsecase: getIt.get(),
        ),
        child: const TodoPage(),
      ),
    );
  }
}
