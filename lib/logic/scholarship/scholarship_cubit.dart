import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

import '../../data/models/scholarship.dart';
import '../../data/repo/scholarship_repo.dart';

part 'scholarship_state.dart';

class ScholarshipCubit extends Cubit<ScholarshipState> {
  final ScholarshipRepo scholarshipRepo;
  final ScrollController scrollController = ScrollController();
  bool _isFetching = false;
  List<Scholarship> _allScholarships = [];

  ScholarshipCubit({required this.scholarshipRepo})
      : super(ScholarshipState.initial()) {
    scrollController.addListener(_onScroll);
  }

  Future<void> getInitialScholarships() => fetchScholarships(isInitialLoad: true);

  Future<void> loadMoreScholarships() => fetchScholarships(isInitialLoad: false);

  Future<void> fetchScholarships({required bool isInitialLoad}) async {
    if (_shouldSkipFetch(isInitialLoad)) return;
    _isFetching = true;

    emit(state.copyWith(
      status: isInitialLoad
          ? ScholarshipStatus.loading
          : ScholarshipStatus.loadingMore,
    ));

    try {
      final paginated = await scholarshipRepo.fetchScholarships(
        url: isInitialLoad ? null : state.nextPageUrl,
      );

      if (isClosed) return;

      if (isInitialLoad) _allScholarships = [];

      _allScholarships.addAll(paginated.scholarships);

      emit(state.copyWith(
        status: ScholarshipStatus.loaded,
        scholarships: _allScholarships,
        nextPageUrl: paginated.nextPageUrl,
        hasReachedMax: paginated.hasReachedMax,
      ));
    } catch (error) {
      _handleError(error);
    } finally {
      _isFetching = false;
    }
  }

  Future<void> getScholarshipDetails(int scholarshipId) async {
    emit(state.copyWith(status: ScholarshipStatus.loading));
    try {
      final scholarship = await scholarshipRepo.fetchScholarship(
          scholarshipId: scholarshipId);
      emit(state.copyWith(
        status: ScholarshipStatus.loaded,
        selectedScholarship: scholarship,
      ));
    } catch (error) {
      _handleError(error);
    }
  }

  void searchScholarships(String query) {
    if (query.isEmpty) {
      emit(state.copyWith(scholarships: _allScholarships));
      return;
    }
    final filtered = _allScholarships.where((scholarship) {
      return scholarship.name.toLowerCase().contains(query.toLowerCase());
    }).toList();
    emit(state.copyWith(scholarships: filtered));
  }

  void _onScroll() {
    if (_isBottom) loadMoreScholarships();
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
      status: ScholarshipStatus.error,
      error: error.toString(),
    ));
    print('Scholarship Error: ${error.toString()}');
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