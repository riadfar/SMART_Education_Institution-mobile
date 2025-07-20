class Scholarship {
  final int id;
  final String name;
  final String imageUrl;
  final String desc;
  final String typeOfFinancing;
  final String fundingAgency;
  final String achievedCertificate;
  final String requiredDocuments;
  final String advantages;
  final String requiredCertificates;
  final String submissionTime;
  final String university;
  final String country;
  final String specialization;

  Scholarship({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.desc,
    required this.typeOfFinancing,
    required this.fundingAgency,
    required this.achievedCertificate,
    required this.requiredDocuments,
    required this.advantages,
    required this.requiredCertificates,
    required this.submissionTime,
    required this.university,
    required this.country,
    required this.specialization,
  });

  factory Scholarship.initial() => Scholarship(
    id: -1,
    name: 'name',
    imageUrl: 'imageUrl',
    desc: 'desc',
    typeOfFinancing: 'typeOfFinancing',
    fundingAgency: 'fundingAgency',
    achievedCertificate: 'achievedCertificate',
    requiredDocuments: 'requiredDocuments',
    advantages: 'advantages',
    requiredCertificates: 'requiredCertificates',
    submissionTime: 'submissionTime',
    university: 'university',
    country: 'country',
    specialization: 'specialization',
  );

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'name': this.name,
      'imageUrl': this.imageUrl,
      'desc': this.desc,
      'typeOfFinancing': this.typeOfFinancing,
      'fundingAgency': this.fundingAgency,
      'achievedCertificate': this.achievedCertificate,
      'requiredDocuments': this.requiredDocuments,
      'advantages': this.advantages,
      'requiredCertificates': this.requiredCertificates,
      'submissionTime': this.submissionTime,
      'university': this.university,
      'country': this.country,
      'specialization': this.specialization,
    };
  }

  factory Scholarship.fromMap(Map<String, dynamic> map) {
    return Scholarship(
      id: map['id'] as int,
      name: map['name'] as String,
      imageUrl: map['imageUrl'] as String,
      desc: map['desc'] as String,
      typeOfFinancing: map['typeOfFinancing'] as String,
      fundingAgency: map['fundingAgency'] as String,
      achievedCertificate: map['achievedCertificate'] as String,
      requiredDocuments: map['requiredDocuments'] as String,
      advantages: map['advantages'] as String,
      requiredCertificates: map['requiredCertificates'] as String,
      submissionTime: map['submissionTime'] as String,
      university: map['university'] as String,
      country: map['country'] as String,
      specialization: map['specialization'] as String,
    );
  }
}
List<Scholarship> dummyScholarships = [
  Scholarship(
      id: 301,
      name: "Women in Tech Scholarship",
      imageUrl: "https://example.com/scholarships/wit.jpg",
      desc: "Supporting female developers pursuing tech careers",
      typeOfFinancing: "Full Tuition",
      fundingAgency: "Tech Diversity Foundation",
      achievedCertificate: "Any tech-related certification",
      requiredDocuments: "CV, Motivation Letter, Portfolio",
      advantages: "Mentorship program + internship opportunities",
      requiredCertificates: "Bachelor's degree in STEM field",
      submissionTime: "2023-11-30",
      university: "Global Tech Institute",
      country: "USA",
      specialization: "Software Development"
  ),
  Scholarship(
      id: 302,
      name: "Emerging Markets STEM Award",
      imageUrl: "https://example.com/scholarships/stem.jpg",
      desc: "For students from developing countries pursuing STEM degrees",
      typeOfFinancing: "Full Ride",
      fundingAgency: "Global Education Initiative",
      achievedCertificate: "Bachelor/Master in STEM",
      requiredDocuments: "Academic transcripts, Research proposal",
      advantages: "Travel grant + research funding",
      requiredCertificates: "English proficiency (IELTS 7.0+)",
      submissionTime: "2024-01-15",
      university: "European Technical University",
      country: "Germany",
      specialization: "Artificial Intelligence"
  ),
  Scholarship(
      id: 303,
      name: "Creative Coders Fellowship",
      imageUrl: "https://example.com/scholarships/creative.jpg",
      desc: "Supporting innovative projects at the intersection of art and technology",
      typeOfFinancing: "Partial Funding",
      fundingAgency: "Digital Arts Council",
      achievedCertificate: "Interactive Media Certificate",
      requiredDocuments: "Project proposal, Portfolio, References",
      advantages: "Studio access + exhibition opportunities",
      requiredCertificates: "None (portfolio-based)",
      submissionTime: "2023-12-10",
      university: "London College of Digital Arts",
      country: "UK",
      specialization: "Creative Coding"
  ),
  Scholarship(
      id: 304,
      name: "Climate Tech Scholarship",
      imageUrl: "https://example.com/scholarships/climate.jpg",
      desc: "For students developing solutions for climate change",
      typeOfFinancing: "Tuition + Stipend",
      fundingAgency: "Green Future Foundation",
      achievedCertificate: "Environmental Science Certificate",
      requiredDocuments: "Project plan, Academic records",
      advantages: "Industry connections + prototype funding",
      requiredCertificates: "Relevant coursework/projects",
      submissionTime: "2024-02-28",
      university: "Nordic Sustainability University",
      country: "Sweden",
      specialization: "Environmental Technology"
  ),
];