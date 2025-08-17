
import '../api/course_api.dart';
import '../models/course.dart';
import '../models/paginated_courses.dart';


class CourseRepo {
  final CourseApi courseApi;

  CourseRepo(this.courseApi);

  Future<PaginatedCourses> fetchCourses({String? url}) async {
    print("Repo: Fetching Courses...");
    final response = await courseApi.getAllCourses(url: url);
    return PaginatedCourses.fromMap(response);
  }

  Future<Course> fetchCourse({required int courseId}) async {
    print("Repo: Fetching Course...");
    final response = await courseApi.getCourse(courseId: courseId);
    return Course.fromMap(response);
  }
}


