import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:task_app/models/task_model.dart';

part 'tasks_state.dart';

class TasksCubit extends Cubit<TasksState> {
  TasksCubit() : super(TasksInitial());
  final TaskManager taskManager = TaskManager();

  void addTask(String title) {
    emit(TasksLoading());
    try {
      taskManager.addTask(title);
      emit(TasksSuccess());
    } catch (e) {
      emit(TasksFailure(errMessage: e.toString()));
    }
  }

  void removeTask(TaskModel task) {
    emit(TasksLoading());
    try {
      taskManager.removeTask(task);
      emit(TasksSuccess());
    } catch (e) {
      emit(TasksFailure(errMessage: e.toString()));
    }
  }

  void completeTask(TaskModel task) {
    emit(TasksLoading());
    try {
      taskManager.completeTake(task);
      emit(TasksSuccess());
    } catch (e) {
      emit(TasksFailure(errMessage: e.toString()));
    }
  }

  void uncompelteTask(TaskModel task) {
    emit(TasksLoading());
    try {
      taskManager.uncompleteTake(task);
      emit(TasksSuccess());
    } catch (e) {
      emit(TasksFailure(errMessage: e.toString()));
    }
  }
}
