class Course {
  final int id;
  final String name;
  final String details;
  final String certificate;
  final String imageUrl;

  Course({
    required this.id,
    required this.name,
    required this.details,
    required this.certificate,
    required this.imageUrl
  });

  factory Course.initial() => Course(
    id: -1,
    name: 'name',
    details: 'details',
    certificate: 'certificate',
    imageUrl: "imageUrl"
  );

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'name': this.name,
      'details': this.details,
      'certificate': this.certificate,
      'image_url' : this.imageUrl,
    };
  }

  factory Course.fromMap(Map<String, dynamic> map) {
    return Course(
      id: map['id'] as int,
      name: map['name'] as String,
      details: map['details'] as String,
      certificate: map['certificate'] as String,
      imageUrl: map['image_url'] as String,
    );
  }
}
List<Course> dummyCourses = [
  Course(
      id: 101,
      name: "Flutter Mobile Development",
      details: "Comprehensive course covering Flutter framework, Dart programming, and Firebase integration",
      certificate: "Professional Mobile Developer Certificate",
      imageUrl: "https://example.com/images/flutter.jpg"
  ),
  Course(
      id: 102,
      name: "Web Design Fundamentals",
      details: "Learn HTML5, CSS3, responsive design principles and UI/UX best practices",
      certificate: "Certified Web Designer",
      imageUrl: "https://example.com/images/web-design.jpg"
  ),
  Course(
      id: 103,
      name: "Data Science Bootcamp",
      details: "Master Python, statistical analysis, machine learning, and data visualization",
      certificate: "Data Science Specialist",
      imageUrl: "https://example.com/images/data-science.jpg"
  ),
  Course(
      id: 104,
      name: "Digital Marketing Strategy",
      details: "SEO, social media marketing, content strategy, and analytics training",
      certificate: "Digital Marketing Professional",
      imageUrl: "https://example.com/images/digital-marketing.jpg"
  ),
  Course(
      id: 105,
      name: "Cybersecurity Essentials",
      details: "Network security, ethical hacking, cryptography, and threat management",
      certificate: "Cybersecurity Analyst",
      imageUrl: "https://example.com/images/cybersecurity.jpg"
  ),
];