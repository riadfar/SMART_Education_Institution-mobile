import '../../utils/dio_methods.dart';
import '../../utils/end_points.dart';
import '../../utils/headers.dart';

class LevelApi {
  Future<Map<String, dynamic>> indexLevels({required int courseId}) async {
    final response = await RemoteApi.get(
      EndPoints.indexLevels(courseId),
      headers: headers,
    );
    return response.data;
  }

  Future<Map<String, dynamic>> showLevel({required int levelId}) async {
    final response = await RemoteApi.get(
      EndPoints.showLevel(levelId),
      headers: headers,
    );
    return response.data;
  }
}
