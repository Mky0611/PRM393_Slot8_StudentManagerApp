import 'package:flutter/material.dart';

import '../models/student.dart';

class StudentDetailScreen extends StatelessWidget {
  const StudentDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final student = ModalRoute.of(context)!.settings.arguments as Student;

    return Scaffold(
      appBar: AppBar(title: const Text('Student Detail')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  student.name,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 16),
                Text('ID: ${student.id}'),
                Text('Email: ${student.email}'),
                Text('Major: ${student.major}'),
                const SizedBox(height: 12),
                Chip(label: Text('GPA: ${student.gpa.toStringAsFixed(1)}')),
                Text('Selection status: ${student.isSelected ? 'Selected' : 'Not selected'}'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}