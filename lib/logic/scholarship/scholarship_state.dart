part of 'scholarship_cubit.dart';

enum ScholarshipStatus { initial, loading, loaded, loadingMore, error }

class ScholarshipState extends Equatable {
  final ScholarshipStatus status;
  final String? nextPageUrl;
  final bool hasReachedMax;
  final List<Scholarship> scholarships;
  final Scholarship? selectedScholarship;
  final String error;

  const ScholarshipState({
    required this.status,
    required this.nextPageUrl,
    required this.hasReachedMax,
    required this.scholarships,
    this.selectedScholarship,
    required this.error,
  });

  factory ScholarshipState.initial() => const ScholarshipState(
    status: ScholarshipStatus.initial,
    nextPageUrl: null,
    hasReachedMax: false,
    scholarships: [],
    error: '',
  );

  ScholarshipState copyWith({
    ScholarshipStatus? status,
    String? nextPageUrl,
    bool? hasReachedMax,
    List<Scholarship>? scholarships,
    Scholarship? selectedScholarship,
    String? error,
  }) {
    return ScholarshipState(
      status: status ?? this.status,
      nextPageUrl: nextPageUrl ?? this.nextPageUrl,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
      scholarships: scholarships ?? this.scholarships,
      selectedScholarship: selectedScholarship ?? this.selectedScholarship,
      error: error ?? this.error,
    );
  }

  @override
  List<Object?> get props => [
    status,
    nextPageUrl,
    hasReachedMax,
    scholarships,
    selectedScholarship,
    error
  ];
}