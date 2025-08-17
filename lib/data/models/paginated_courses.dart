import 'course.dart';
import 'paginated_response.dart';


class PaginatedCourses extends PaginatedResponse<Course> {
  PaginatedCourses({
    required List<Course> items,
    String? nextPageUrl,
    required bool hasReachedMax,
  }) : super(
    items: items,
    nextPageUrl: nextPageUrl,
    hasReachedMax: hasReachedMax,
  );

  factory PaginatedCourses.fromMap(Map<String, dynamic> map) {
    return PaginatedCourses(
      items: (map['results'] as List)
          .map((courseJson) => Course.fromMap(courseJson))
          .toList(),
      nextPageUrl: map['info']['next'] as String?,
      hasReachedMax: map['info']['next'] == null,
    );
  }

  // Add this getter for convenience
  List<Course> get courses => items;
}