class Course {
  final int id;
  final String name;
  final String details;
  final String certificate;

  Course({
    required this.id,
    required this.name,
    required this.details,
    required this.certificate,
  });

  factory Course.initial() => Course(
    id: -1,
    name: 'name',
    details: 'details',
    certificate: 'certificate',
  );

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'name': this.name,
      'details': this.details,
      'certificate': this.certificate,
    };
  }

  factory Course.fromMap(Map<String, dynamic> map) {
    return Course(
      id: map['id'] as int,
      name: map['name'] as String,
      details: map['details'] as String,
      certificate: map['certificate'] as String,
    );
  }
}
