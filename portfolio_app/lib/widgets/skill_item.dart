import 'package:flutter/material.dart';

class SkillItem extends StatelessWidget {
  final String skill;

  SkillItem({required this.skill});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: <Widget>[
          Icon(Icons.check, color: Colors.blueAccent),
          SizedBox(width: 10),
          Text(
            skill,
            style: TextStyle(fontSize: 16, color: Colors.blueAccent),
          ),
        ],
      ),
    );
  }
}
