import 'package:flutter/material.dart';

import 'screens/student_detail_screen.dart';
import 'screens/student_list_screen.dart';

void main() {
  runApp(const StudentManagerApp());
}

class StudentManagerApp extends StatelessWidget {
  const StudentManagerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.indigo),
      initialRoute: '/students',
      routes: {
        '/students': (context) => const StudentListScreen(),
        '/student-detail': (context) => const StudentDetailScreen(),
      },
    );
  }
}