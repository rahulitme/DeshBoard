import 'package:flutter/material.dart';

class ProjectListView extends StatelessWidget {
  const ProjectListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ProjectListItem(title: 'Technology behind the Blockchain', projectNumber: 'Project #1'),
        ProjectListItem(title: 'AI and Future Technologies', projectNumber: 'Project #2'),
        ProjectListItem(title: 'New Innovations in Tech', projectNumber: 'Project #3'),
      ],
    );
  }
}

class ProjectListItem extends StatelessWidget {
  final String title;
  final String projectNumber;

  const ProjectListItem({super.key, required this.title, required this.projectNumber});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: const Icon(Icons.work),
        title: Text(title),
        subtitle: Text(projectNumber),
        trailing: IconButton(
          icon: const Icon(Icons.arrow_forward),
          onPressed: () {},
        ),
      ),
    );
  }
}
