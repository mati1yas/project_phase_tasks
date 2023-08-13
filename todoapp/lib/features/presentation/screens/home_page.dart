import 'package:flutter/material.dart';
import 'package:todoapp/features/to%20do%20tasks/data/dataSource/tasks.dart';
import 'package:todoapp/features/presentation/screens/landing_page.dart';

class TodoHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo App'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  'assets/images/to_do_app.jpg',
                ))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 460),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TasksListPage(
                              listOfTasks: tasks,
                            )));
              },
              child: Text(
                'Get Started',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
