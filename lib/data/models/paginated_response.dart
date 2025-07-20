class PaginatedResponse<T> {
  final List<T> items;
  final String? nextPageUrl;
  final bool hasReachedMax;

  PaginatedResponse({
    required this.items,
    this.nextPageUrl,
    required this.hasReachedMax,
  });
}