import 'dart:html';

import 'package:todoapp/features/to%20do%20tasks/data/models/task_model.dart';

import '../../../../core/local_datasource.dart';

abstract class TaskDataSource {
  Future<List<Task>> getAllTasks();
  Future<Task> createTask(
      {required String taskId,
      required String title,
      required String dueDate,
      required String description});
  Future<Task> editTask(
      {required String taskId,
      required String title,
      required String dueDate,
      required String description});
  Future<Task> deleteTask({
    required String taskId,
  });
}

class TaskDataSourceImpl implements TaskDataSource {
  final Client client;
  final LocalStorage local;

  TaskDataSourceImpl({required this.client, required this.local});
  @override
  Future<List<Task>> getAllTasks() async {
    return <Task>[];
  }

  @override
  Future<Task> createTask(
      {required String taskId,
      required String title,
      required String dueDate,
      required String description}) async {
    return Task.fromJson({});
  }

  @override
  Future<Task> editTask(
      {required String taskId,
      required String title,
      required String dueDate,
      required String description}) async {
    return Task.fromJson({});
  }

  @override
  Future<Task> deleteTask({
    required String taskId,
  }) async {
    return Task.fromJson({});
  }
}
