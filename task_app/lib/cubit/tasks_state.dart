part of 'tasks_cubit.dart';

sealed class TasksState extends Equatable {
  const TasksState();

  @override
  List<Object> get props => [];
}

final class TasksInitial extends TasksState {}

final class TasksLoading extends TasksState {}

final class TasksFailure extends TasksState {
  final String errMessage;

  const TasksFailure({required this.errMessage});

  @override
  // TODO: implement props
  List<Object> get props => [errMessage];
}

final class TasksSuccess extends TasksState {}
