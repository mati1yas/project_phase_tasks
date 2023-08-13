import 'package:flutter/material.dart';
import 'package:todoapp/features/to%20do%20tasks/data/models/task_model.dart';
import 'package:todoapp/features/presentation/screens/new_task_page.dart';
import 'package:todoapp/features/presentation/screens/task_detail_page.dart';

import '../../to do tasks/data/dataSource/tasks.dart';

class TasksListPage extends StatelessWidget {
  final List<Task> listOfTasks;

  const TasksListPage({super.key, required this.listOfTasks});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tasks List'),
        leading: BackButton(),
        actions: [Icon(Icons.more_vert)],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            'assets/images/list_of_tasks.jpg',
            height: 200,
            width: 200,
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: tasks.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(tasks[index].title ?? ""),
                trailing: Icon(Icons.check_box),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (ctx) =>
                              TaskDetailPage(task: tasks[index])));
                },
              );
            },
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (ctx) => CreateNewTaskPage()));
            },
            child: Text('Create New Task'),
          ),
        ],
      ),
    );
  }
}
