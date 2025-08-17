import '../api/level_api.dart';
import '../models/level.dart';

class LevelRepo {
  final LevelApi levelApi;

  LevelRepo({required this.levelApi});

  Future<List<Level>> indexLevels({required int courseId}) async {
    final response = await levelApi.indexLevels(courseId: courseId);
    final List<dynamic> levelsDara = response['levels'] ?? [];
    List<Level> levels = levelsDara.map((item) => Level.fromMap(item)).toList();
    return levels;
  }

  Future<Level> showLevel({required int levelId}) async {
    final response = await levelApi.showLevel(levelId: levelId);
    Level level = Level.fromMap(response);
    return level;
  }
}
