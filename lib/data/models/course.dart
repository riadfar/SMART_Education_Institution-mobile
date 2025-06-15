class Course {
  final int id;
  final String name;
  final String teacherName;
  final String startAt;
  final String duration;
  final String details;
  final String certificate;

  Course({
    required this.id,
    required this.name,
    required this.teacherName,
    required this.startAt,
    required this.duration,
    required this.details,
    required this.certificate,
  });

  factory Course.initial() => Course(
    id: -1,
    name: '',
    teacherName: '',
    startAt: '',
    duration: '',
    details: '',
    certificate: '',
  );

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'name': this.name,
      'teacherName': this.teacherName,
      'startAt': this.startAt,
      'duration': this.duration,
      'details': this.details,
      'certificate': this.certificate,
    };
  }

  factory Course.fromMap(Map<String, dynamic> map) {
    return Course(
      id: map['id'] as int,
      name: map['name'] as String,
      teacherName: map['teacher_name'] as String,
      startAt: map['start_at'] as String,
      duration: map['duration'] as String,
      details: map['details'] as String,
      certificate: map['certificate'] as String,
    );
  }
}
