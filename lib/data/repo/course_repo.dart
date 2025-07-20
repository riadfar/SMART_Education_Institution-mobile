import 'dart:convert';

import '../api/course_api.dart';
import '../models/course.dart';

class CourseRepo {
  final CourseApi courseApi;

  CourseRepo({required this.courseApi});

  Future<List<Course>> indexCourses() async {
      final response = await courseApi.indexCourses();
      final List<dynamic> coursesData = response['courses']??[];
      List<Course> courses = coursesData.map((item)=>Course.fromMap(item)).toList();
      return courses;
  }
  Future<Course> showCourse({required int courseId}) async {
    final response = await courseApi.showCourse(courseId: courseId);
    Course course = Course.fromMap(response);
    return course;
  }

}
