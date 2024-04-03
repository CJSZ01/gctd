import 'package:equatable/equatable.dart';
import 'package:gctd/domain/entities/task/task_entity.dart';

sealed class TodoState extends Equatable {
  const TodoState();
  @override
  List<Object> get props => [];
}

final class TodoLoadingState extends TodoState {
  const TodoLoadingState();
}

final class TodoLoadedState extends TodoState {
  final List<TaskEntity> tasks;

  const TodoLoadedState({required this.tasks});
  @override
  List<Object> get props => [tasks];
}

final class TodoErrorState extends TodoState {
  const TodoErrorState();
}
