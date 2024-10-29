import 'package:flutter/material.dart';

class ProjectCard extends StatelessWidget {
  final String title;
  final String subtitle;

  const ProjectCard({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.purple[100],
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text(subtitle, style: const TextStyle(fontSize: 14)),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Learn More'),
            ),
          ],
        ),
      ),
    );
  }
}
