import 'package:flutter/material.dart';
import 'package:portfolio_app/models/project.dart';

class ProjectDetailPage extends StatelessWidget {
  final Project project;

  ProjectDetailPage({required this.project});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(project.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(project.imageUrl, fit: BoxFit.cover),
            SizedBox(height: 16),
            Text(
              project.title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(project.description),
          ],
        ),
      ),
    );
  }
}
