import 'package:flutter/material.dart';

class ExperiencePage extends StatelessWidget {
  final List<Map<String, String>> experience = [
    {
      'position': 'Position 1',
      'company': 'Company 1',
      'duration': 'Duration 1',
      'description': 'Description of the experience at company 1.',
    },
    {
      'position': 'Position 2',
      'company': 'Company 2',
      'duration': 'Duration 2',
      'description': 'Description of the experience at company 2.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Experience'),
      ),
      body: ListView.builder(
        itemCount: experience.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(experience[index]['position']!),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(experience[index]['company']!),
                  Text(experience[index]['duration']!),
                  Text(experience[index]['description']!),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
