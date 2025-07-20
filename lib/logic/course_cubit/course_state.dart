part of 'course_cubit.dart';

enum CourseStatus { initial, loading, loaded, loadingMore, error }

class CourseState extends Equatable {
  final CourseStatus status;
  final String? nextPageUrl;
  final bool hasReachedMax;
  final List<Course> courses;
  final Course? selectedCourse;
  final String error;

  const CourseState({
    required this.status,
    required this.nextPageUrl,
    required this.hasReachedMax,
    required this.courses,
    this.selectedCourse,
    required this.error,
  });

  factory CourseState.initial() => const CourseState(
    status: CourseStatus.initial,
    nextPageUrl: null,
    hasReachedMax: false,
    courses: [],
    error: '',
  );

  CourseState copyWith({
    CourseStatus? status,
    String? nextPageUrl,
    bool? hasReachedMax,
    List<Course>? courses,
    Course? selectedCourse,
    String? error,
  }) {
    return CourseState(
      status: status ?? this.status,
      nextPageUrl: nextPageUrl ?? this.nextPageUrl,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
      courses: courses ?? this.courses,
      selectedCourse: selectedCourse ?? this.selectedCourse,
      error: error ?? this.error,
    );
  }

  @override
  List<Object?> get props => [
    status,
    nextPageUrl,
    hasReachedMax,
    courses,
    selectedCourse,
    error
  ];
}