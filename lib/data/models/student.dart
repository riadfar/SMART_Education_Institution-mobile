class Student {
  final int studentId;
  final int userId;
  final String firstName;
  final String lastName;
  final String phoneNumber;
  final String gender;
  final int? age;
  final String? image;

  Student({
    required this.studentId,
    required this.userId,
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    required this.gender,
    this.age,
    this.image,
  });

  factory Student.initial() => Student(
    studentId: -1,
    userId: -1,
    firstName: '',
    lastName: '',
    phoneNumber: '',
    gender: '',
    age: -1,
    image: '',
  );

  Map<String, dynamic> toMap() {
    return {
      'student_id': this.studentId,
      'user_id': this.userId,
      'first_name': this.firstName,
      'last_name': this.lastName,
      'phone_number': this.phoneNumber,
      'gender': this.gender,
      'age': this.age,
      'image': this.image,
    };
  }

  factory Student.fromMap(Map<String, dynamic> map) {
    return Student(
      studentId: map['student_id'] ?? -1,
      userId: map['user_id'] ?? -1,
      firstName: map['first_name'] ?? '',
      lastName: map['last_name'] ?? '',
      phoneNumber: map['phone_number'] ?? '',
      gender: map['gender'] ?? '',
      age: map['age'] ?? -1,
      image: map['image'] ?? '',
    );
  }
}
