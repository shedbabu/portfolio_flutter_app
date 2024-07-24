import 'package:flutter/material.dart';
import 'package:portfolio_app/models/project.dart';

class ProjectItem extends StatelessWidget {
  final Project project;

  ProjectItem({required this.project});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: Image.network(
          project.imageUrl,
          width: 50,
          height: 50,
          fit: BoxFit.cover,
        ),
        title: Text(project.title),
        subtitle: Text(project.description),
      ),
    );
  }
}
