import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecase.dart';
import '../repository/tasks_repository.dart';

class Tasks implements UseCase<List<Task>, Params> {
  final TasksRepository tasksRepository;

  Tasks({required this.tasksRepository});
  @override
  Future<Either<Failure, List<Task>>> call(params) async {
    try {
      final response = await tasksRepository.getAllTasks();
      return response;
    } catch (e) {
      throw Left(ServerFailure());
    }
  }

  Future<Either<Failure, List<Task>>> getAllTasks() async {
    try {
      final response = await tasksRepository.getAllTasks();
      return response;
    } catch (e) {
      throw Left(ServerFailure());
    }
  }

  Future<Either<Failure, Task>> createTask(
      {required String taskId,
      required String title,
      required String dueDate,
      required String description}) async {
    final response = await tasksRepository.createTask(
        taskId: taskId,
        dueDate: dueDate,
        title: title,
        description: description);
    ;
    return response;
  }

  Future<Either<Failure, Task>> editTask(
      {required String taskId,
      required String title,
      required String dueDate,
      required String description}) async {
    final response = await tasksRepository.editTask(
        taskId: taskId,
        dueDate: dueDate,
        title: title,
        description: description);
    return response;
  }

  Future<Either<Failure, Task>> deleteTask({
    required String taskId,
  }) async {
    final response = await tasksRepository.deleteTask(
      taskId: taskId,
    );
    return response;
  }
}

class Params {}

class Param implements Equatable {
  final String title;
  final String dueDate;
  final String description;

  Param(this.title, this.dueDate, this.description);

  @override
  List<Object?> get props => throw UnimplementedError();

  @override
  bool? get stringify => throw UnimplementedError();
}
