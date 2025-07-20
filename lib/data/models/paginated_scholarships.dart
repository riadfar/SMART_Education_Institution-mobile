import 'package:smart_education_institution_mobile/data/models/paginated_response.dart';
import 'package:smart_education_institution_mobile/data/models/scholarship.dart';

class PaginatedScholarships extends PaginatedResponse<Scholarship> {
  PaginatedScholarships({
    required List<Scholarship> items,
    String? nextPageUrl,
    required bool hasReachedMax,
  }) : super(
    items: items,
    nextPageUrl: nextPageUrl,
    hasReachedMax: hasReachedMax,
  );

  factory PaginatedScholarships.fromMap(Map<String, dynamic> map) {
    return PaginatedScholarships(
      items: (map['results'] as List)
          .map((scholarshipJson) => Scholarship.fromMap(scholarshipJson))
          .toList(),
      nextPageUrl: map['info']['next'] as String?,
      hasReachedMax: map['info']['next'] == null,
    );
  }

  // Add this getter for convenience
  List<Scholarship> get scholarships => items;
}