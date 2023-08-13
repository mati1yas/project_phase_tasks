import 'package:dartz/dartz.dart';
import 'package:todoapp/features/to%20do%20tasks/domain/repository/tasks_repository.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/local_datasource.dart';
import '../dataSource/tasks_datasource.dart';

class TaskRepositoryImpl implements TasksRepository {
  final TaskDataSource taskDataSource;
  final LocalStorage localStorage;

  TaskRepositoryImpl(this.taskDataSource, this.localStorage);

  @override
  Future<Either<Failure, List<Task>>> getAllTasks() async {
    try {
      final remotedata = await taskDataSource.getAllTasks();
      return Right(remotedata.cast<Task>());
    } catch (e) {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, Task>> createTask(
      {required String taskId,
      required String title,
      required String dueDate,
      required String description}) async {
    try {
      final response = await taskDataSource.createTask(
          taskId: taskId,
          dueDate: dueDate,
          title: title,
          description: description);

      return Right(response as Task);
    } catch (e) {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, Task>> editTask(
      {required String taskId,
      required String title,
      required String dueDate,
      required String description}) async {
    try {
      final response = await taskDataSource.editTask(
          taskId: taskId,
          dueDate: dueDate,
          title: title,
          description: description);

      return Right(response as Task);
    } catch (e) {
      throw UnimplementedError();
    }
  }

  @override
  Future<Either<Failure, Task>> deleteTask({
    required String taskId,
  }) async {
    try {
      final response = await taskDataSource.deleteTask(
        taskId: taskId,
      );

      return Right(response as Task);
    } catch (e) {
      return Left(ServerFailure());
    }
  }
}
