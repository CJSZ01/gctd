import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gctd/domain/usecases/create_task/create_task_usecase.dart';
import 'package:gctd/domain/usecases/get_tasks/get_tasks_usecase.dart';
import 'package:gctd/presentation/pages/todo/todo_state.dart';

class TodoCubit extends Cubit<TodoState> {
  final CreateTaskUsecase _createTaskUsecase;
  final GetTasksUsecase _getTasksUsecase;

  TodoCubit(
      {required CreateTaskUsecase createTaskUsecase,
      required GetTasksUsecase getTasksUsecase})
      : _createTaskUsecase = createTaskUsecase,
        _getTasksUsecase = getTasksUsecase,
        super(
          const TodoLoadingState(),
        );

  void getTasks() async {
    final response = await _getTasksUsecase();
    response.fold(
      (exception) => emit(
        const TodoErrorState(),
      ),
      (tasks) => emit(
        TodoLoadedState(
          tasks: tasks.tasks,
        ),
      ),
    );
  }
}
