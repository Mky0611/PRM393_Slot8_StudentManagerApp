import 'package:flutter/material.dart';

import '../models/student.dart';

class StudentCard extends StatelessWidget {
  const StudentCard({
    super.key,
    required this.student,
    required this.onSelect,
    required this.onOpenDetail,
  });

  final Student student;
  final VoidCallback onSelect;
  final VoidCallback onOpenDetail;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          child: Text(student.name.substring(0, 1)),
        ),
        title: Text(
          student.name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text('${student.id} -${student.major}'),
        trailing: IconButton(
          onPressed: onSelect,
          icon: Icon(
            student.isSelected ? Icons.check_circle : Icons.circle_outlined,
          ),
        ),
        onTap: onOpenDetail,
      ),
    );
  }
}