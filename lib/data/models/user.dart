class User {
  final int userId;
  final String email;
  final bool requireStudentData;

  User({
    required this.userId,
    required this.email,
    required this.requireStudentData,
  });
  
  factory User.initial() =>
      User(userId: -1, email: '', requireStudentData: false);

  Map<String, dynamic> toMap() {
    return {
      'userId': this.userId,
      'email': this.email,
      'require_student_data': this.requireStudentData,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      userId: map['user_id'] as int,
      email: map['email'] as String,
      requireStudentData: map['require_student_data'],
    );
  }
}
