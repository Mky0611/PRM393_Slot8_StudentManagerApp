import 'package:flutter/material.dart';

import '../models/student.dart';
import '../widgets/student_card.dart';

class StudentListScreen extends StatefulWidget {
  const StudentListScreen({super.key});

  @override
  State<StudentListScreen> createState() => _StudentListScreenState();
}

class _StudentListScreenState extends State<StudentListScreen> {
  final List<Student> _students = [
    Student(
      id: 'SE170001',
      name: 'Phước Thịnh',
      email: 'phuocthinh@example.com',
      major: 'Mobile Development',
      gpa: 3.8,
    ),
    Student(
      id: 'SE170002',
      name: 'Minh Anh',
      email: 'minhanh@example.com',
      major: 'Software Engineering',
      gpa: 3.6,
    ),
    Student(
      id: 'SE170003',
      name: 'Quang Huy',
      email: 'quanghuy@example.com',
      major: 'Information Systems',
      gpa: 3.4,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Manager - Named Routes'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: _students.length,
        itemBuilder: (context, index) {
          final student = _students[index];
          return StudentCard(
            student: student,
            onSelect: () {
              setState(() => student.isSelected = !student.isSelected);
            },
            onOpenDetail: () {
              Navigator.pushNamed(
                context,
                '/student-detail',
                arguments: student,
              );
            },
          );
        },
      ),
    );
  }
}