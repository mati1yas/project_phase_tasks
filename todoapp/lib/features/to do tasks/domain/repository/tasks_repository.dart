import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';

abstract class TasksRepository {
  Future<Either<Failure, List<Task>>> getAllTasks();
  Future<Either<Failure, Task>> createTask(
      {required String taskId,
      required String title,
      required String dueDate,
      required String description});

  Future<Either<Failure, Task>> editTask(
      {required String taskId,
      required String title,
      required String dueDate,
      required String description});
  Future<Either<Failure, Task>> deleteTask({
    required String taskId,
  });
}
