class Student {
  final String id;
  final String name;
  final String email;
  final String major;
  final double gpa;
  bool isSelected;

  Student({
    required this.id,
    required this.name,
    required this.email,
    required this.major,
    required this.gpa,
    this.isSelected = false,
  });
}