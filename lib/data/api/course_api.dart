import '../../utils/dio_methods.dart';
import '../../utils/end_points.dart';
import '../../utils/headers.dart';

class CourseApi {
  Future<Map<String, dynamic>> indexCourses() async {
    final response = await RemoteApi.get(
      EndPoints.indexCourses,
      headers: headers,
    );
    return response.data;
  }

  Future<Map<String, dynamic>> showCourse({required int courseId}) async {
    final response = await RemoteApi.get(
      EndPoints.showCourse(courseId),
      headers: headers,
    );
    return response.data;
  }
}
