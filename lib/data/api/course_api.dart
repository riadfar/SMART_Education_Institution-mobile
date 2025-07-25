import '../../utils/dio_methods.dart';
import '../../utils/end_points.dart';
import '../../utils/headers.dart';

class CourseApi {
  Future<Map<String, dynamic>> getAllCourses({String? url}) async {
    final endpoint = url ?? EndPoints.indexCourses;
    print("Calling API: $endpoint");
    final response = await RemoteApi.get(endpoint, headers: headers);
    print("API Response: ${response.data}");
    return response.data as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> getCourse({required int courseId}) async {
    print("Calling API: ${EndPoints.showCourse(courseId)}");
    final response = await RemoteApi.get(
      EndPoints.showCourse(courseId),
      headers: headers,
    );
    print("API Response: ${response.data}");
    return response.data as Map<String, dynamic>;
  }
}
