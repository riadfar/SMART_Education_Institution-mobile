import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

import '../../data/models/course.dart';
import '../../data/repo/course_repo.dart';

part 'course_state.dart';

class CourseCubit extends Cubit<CourseState> {
  final CourseRepo courseRepo;
  final ScrollController scrollController = ScrollController();
  bool _isFetching = false;
  List<Course> _allCourses = [];

  CourseCubit({required this.courseRepo})
      : super(CourseState.initial()) {
    scrollController.addListener(_onScroll);
  }

  Future<void> getInitialCourses() => fetchCourses(isInitialLoad: true);

  Future<void> loadMoreCourses() => fetchCourses(isInitialLoad: false);

  Future<void> fetchCourses({required bool isInitialLoad}) async {
    if (_shouldSkipFetch(isInitialLoad)) return;
    _isFetching = true;

    emit(state.copyWith(
      status: isInitialLoad
          ? CourseStatus.loading
          : CourseStatus.loadingMore,
    ));

    try {
      final paginated = await courseRepo.fetchCourses(
        url: isInitialLoad ? null : state.nextPageUrl,
      );

      if (isClosed) return;

      if (isInitialLoad) _allCourses = [];

      _allCourses.addAll(paginated.courses);

      emit(state.copyWith(
        status: CourseStatus.loaded,
        courses: _allCourses,
        nextPageUrl: paginated.nextPageUrl,
        hasReachedMax: paginated.hasReachedMax,
      ));
    } catch (error) {
      _handleError(error);
    } finally {
      _isFetching = false;
    }
  }

  Future<void> getCourseDetails(int courseId) async {
    emit(state.copyWith(status: CourseStatus.loading));
    try {
      final course = await courseRepo.fetchCourse(courseId: courseId);
      emit(state.copyWith(
        status: CourseStatus.loaded,
        selectedCourse: course,
      ));
    } catch (error) {
      _handleError(error);
    }
  }

  void searchCourses(String query) {
    if (query.isEmpty) {
      emit(state.copyWith(courses: _allCourses));
      return;
    }
    final filtered = _allCourses.where((course) {
      return course.name.toLowerCase().contains(query.toLowerCase());
    }).toList();
    emit(state.copyWith(courses: filtered));
  }

  void _onScroll() {
    if (_isBottom) loadMoreCourses();
  }

  bool get _isBottom {
    if (!scrollController.hasClients || scrollController.position.outOfRange)
      return false;
    final maxScroll = scrollController.position.maxScrollExtent;
    final currentScroll = scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }

  void _handleError(dynamic error) {
    emit(state.copyWith(
      status: CourseStatus.error,
      error: error.toString(),
    ));
    print('Course Error: ${error.toString()}');
  }

  bool _shouldSkipFetch(bool isInitialLoad) {
    return _isFetching || isClosed || (!isInitialLoad && state.hasReachedMax);
  }

  @override
  Future<void> close() {
    scrollController.removeListener(_onScroll);
    scrollController.dispose();
    return super.close();
  }
}