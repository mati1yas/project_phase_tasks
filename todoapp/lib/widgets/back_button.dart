import 'package:flutter/material.dart';

class BackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back_ios), // Use your desired icon here
      onPressed: () {
        Navigator.pop(context); // Handle back button press here
      },
    );
  }
}
