import 'package:flutter/material.dart';

class BirthdayWidget extends StatelessWidget {
  const BirthdayWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.pink[100],
      child: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Birthdays', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            SizedBox(height: 8),
            Text('🎂 John Doe - 24th October'),
            Text('🎂 Jane Smith - 27th October'),
          ],
        ),
      ),
    );
  }
}
