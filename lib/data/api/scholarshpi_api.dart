import 'package:smart_education_institution_mobile/utils/headers.dart';

import '../../utils/dio_methods.dart';
import '../../utils/end_points.dart';

class ScholarshipApi {
  Future<Map<String, dynamic>> getAllScholarships({String? url}) async {
    final endpoint = url ?? EndPoints.indexScholarships;
    print("Calling API: $endpoint");
    final response = await RemoteApi.get(endpoint, headers: headers);
    print("API Response: ${response.data}");
    return response.data as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> getScholarship({
    required int scholarshipId,
  }) async {
    print("Calling API: ${EndPoints.showScholarship(scholarshipId)}");
    final response = await RemoteApi.get(
      EndPoints.showScholarship(scholarshipId),
      headers: headers,
    );
    print("API Response: ${response.data}");
    return response.data as Map<String, dynamic>;
  }
}
