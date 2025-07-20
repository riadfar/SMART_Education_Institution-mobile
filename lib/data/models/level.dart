class Level {
  final int id;
  final int courseId;
  final String name;
  final String teacher;
  final String status;
  final String description;
  final int seatsNum;
  final String time;
  final String startAt;

  Level({
    required this.id,
    required this.courseId,
    required this.name,
    required this.teacher,
    required this.status,
    required this.description,
    required this.seatsNum,
    required this.time,
    required this.startAt,
  });

  factory Level.initial() => Level(
    id: -1,
    courseId: -1,
    name: "name",
    teacher: 'teacher',
    status: 'status',
    description: 'description',
    seatsNum: -1,
    time: 'time',
    startAt: 'startAt',
  );

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'courseId': this.courseId,
      'name' : this.name,
      'teacher': this.teacher,
      'status': this.status,
      'description': this.description,
      'seatsNum': this.seatsNum,
      'time': this.time,
      'startAt':this.startAt,
    };
  }

  factory Level.fromMap(Map<String, dynamic> map) {
    return Level(
      id: map['id'] as int,
      courseId: map['course_id'] as int,
      name: map['name'] as String,
      teacher: map['instructor_name'] as String,
      status: map['status'] as String,
      description: map['description'] as String,
      seatsNum: map['seats'] as int,
      time: map['course_time'] as String,
      startAt: map['start_at'] as String,
    );
  }
}
