import '../api/scholarshpi_api.dart';
import '../models/paginated_scholarships.dart';
import '../models/scholarship.dart';

class ScholarshipRepo {
  final ScholarshipApi scholarshipApi;

  ScholarshipRepo(this.scholarshipApi);

  Future<PaginatedScholarships> fetchScholarships({String? url}) async {
    print("Repo: Fetching Scholarships...");
    final response = await scholarshipApi.getAllScholarships(url: url);
    return PaginatedScholarships.fromMap(response);
  }

  Future<Scholarship> fetchScholarship({required int scholarshipId}) async {
    print("Repo: Fetching Scholarship...");
    final response = await scholarshipApi.getScholarship(
      scholarshipId: scholarshipId,
    );
    return Scholarship.fromMap(response);
  }
}
