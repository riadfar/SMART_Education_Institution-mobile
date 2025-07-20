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
List<Level> dummyLevels = [
  // Flutter Mobile Development (Course 101) - 3 levels
  Level(
      id: 201,
      courseId: 101,
      name: "Flutter Fundamentals",
      teacher: "Dr. Sarah Johnson",
      status: "Enrolling",
      description: "Dart syntax, widget tree basics, and simple UI creation",
      seatsNum: 30,
      time: "Mon/Wed 18:00-20:00",
      startAt: "2023-09-10"
  ),
  Level(
      id: 202,
      courseId: 101,
      name: "Intermediate Flutter",
      teacher: "Prof. Michael Chen",
      status: "Full",
      description: "State management, API integration, and Firebase basics",
      seatsNum: 0,
      time: "Tue/Thu 17:00-19:00",
      startAt: "2023-10-05"
  ),
  Level(
      id: 203,
      courseId: 101,
      name: "Advanced Flutter Pro",
      teacher: "Alexandra Park",
      status: "Starting Soon",
      description: "Custom render objects, performance optimization, and CI/CD pipelines",
      seatsNum: 20,
      time: "Sat 10:00-14:00",
      startAt: "2023-11-15"
  ),

  // Web Design Fundamentals (Course 102) - 3 levels
  Level(
      id: 204,
      courseId: 102,
      name: "HTML & CSS Essentials",
      teacher: "James Wilson",
      status: "Enrolling",
      description: "Semantic HTML, CSS selectors, and basic layout techniques",
      seatsNum: 40,
      time: "Mon 19:00-21:00",
      startAt: "2023-10-20"
  ),
  Level(
      id: 205,
      courseId: 102,
      name: "Responsive Design",
      teacher: "Emma Rodriguez",
      status: "Enrolling",
      description: "Flexbox, CSS Grid, media queries, and mobile-first approach",
      seatsNum: 35,
      time: "Wed 18:30-21:00",
      startAt: "2023-11-01"
  ),
  Level(
      id: 206,
      courseId: 102,
      name: "UI/UX Professional",
      teacher: "Thomas Kim",
      status: "Coming Soon",
      description: "Design systems, prototyping, accessibility standards, and Figma mastery",
      seatsNum: 25,
      time: "Fri 17:00-20:00",
      startAt: "2024-01-12"
  ),

  // Data Science Bootcamp (Course 103) - 3 levels
  Level(
      id: 207,
      courseId: 103,
      name: "Python for Data Analysis",
      teacher: "Dr. Emily Rodriguez",
      status: "Enrolling",
      description: "Pandas, NumPy, and basic data visualization with Matplotlib",
      seatsNum: 25,
      time: "Sat/Sun 10:00-13:00",
      startAt: "2023-11-15"
  ),
  Level(
      id: 208,
      courseId: 103,
      name: "Statistical Modeling",
      teacher: "Dr. Robert Chen",
      status: "In Progress",
      description: "Probability distributions, hypothesis testing, and regression analysis",
      seatsNum: 20,
      time: "Tue/Thu 19:00-21:30",
      startAt: "2023-09-05"
  ),
  Level(
      id: 209,
      courseId: 103,
      name: "Machine Learning Mastery",
      teacher: "Dr. Sophia Williams",
      status: "Starting Soon",
      description: "Supervised/unsupervised learning, model evaluation, and Scikit-Learn",
      seatsNum: 15,
      time: "Mon/Wed/Fri 18:00-20:00",
      startAt: "2024-02-01"
  ),

  // Digital Marketing Strategy (Course 104) - 3 levels
  Level(
      id: 210,
      courseId: 104,
      name: "Digital Marketing Basics",
      teacher: "Olivia Martin",
      status: "Enrolling",
      description: "Marketing funnels, SEO fundamentals, and content strategy",
      seatsNum: 50,
      time: "Thu 19:00-21:00",
      startAt: "2023-10-12"
  ),
  Level(
      id: 211,
      courseId: 104,
      name: "Advanced Analytics",
      teacher: "Mark Johnson",
      status: "Full",
      description: "Google Analytics, conversion tracking, and ROI measurement",
      seatsNum: 0,
      time: "Sat 14:00-17:00",
      startAt: "2023-11-25"
  ),
  Level(
      id: 212,
      courseId: 104,
      name: "Growth Marketing Pro",
      teacher: "Lisa Anderson",
      status: "Enrolling",
      description: "Automation tools, A/B testing frameworks, and viral strategies",
      seatsNum: 30,
      time: "Tue 18:00-21:00",
      startAt: "2024-01-09"
  ),

  // Cybersecurity Essentials (Course 105) - 3 levels
  Level(
      id: 213,
      courseId: 105,
      name: "Security Fundamentals",
      teacher: "Alex Thompson",
      status: "In Progress",
      description: "Network security basics, cryptography essentials, and threat landscape",
      seatsNum: 15,
      time: "Wed/Fri 16:00-18:00",
      startAt: "2023-09-01"
  ),
  Level(
      id: 214,
      courseId: 105,
      name: "Ethical Hacking",
      teacher: "Daniel White",
      status: "Enrolling",
      description: "Penetration testing, vulnerability scanning, and Kali Linux tools",
      seatsNum: 12,
      time: "Mon/Thu 17:30-20:00",
      startAt: "2023-12-04"
  ),
  Level(
      id: 215,
      courseId: 105,
      name: "Security Operations",
      teacher: "Rachel Green",
      status: "Coming Soon",
      description: "SIEM systems, incident response, and threat hunting techniques",
      seatsNum: 10,
      time: "Sat 09:00-13:00",
      startAt: "2024-03-05"
  ),
];