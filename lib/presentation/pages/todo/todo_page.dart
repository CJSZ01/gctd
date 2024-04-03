import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gctd/presentation/pages/todo/todo_cubit.dart';
import 'package:gctd/presentation/pages/todo/todo_state.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  late final TodoCubit _cubit;
  @override
  void initState() {
    super.initState();
    _cubit = context.read<TodoCubit>();
    _cubit.getTasks();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Gado Certo To Do',
        ),
      ),
      body: Center(
        child: BlocBuilder<TodoCubit, TodoState>(
          bloc: _cubit,
          builder: (context, state) {
            if (state is TodoErrorState) {
              return const Text('Ocorreu um erro ao listar as tarefas');
            }
            if (state is TodoLoadedState) {
              final tasks = state.tasks;
              if (tasks.isEmpty) {
                return const Text('Não há tarefas');
              }
              return ListView.builder(
                itemCount: tasks.length,
                itemBuilder: (context, index) => Text(tasks[index].task),
              );
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
