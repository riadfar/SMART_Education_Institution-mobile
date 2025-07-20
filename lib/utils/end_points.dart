class EndPoints {
  ///AUTH
  static final String register = '/register';
  static final String login = '/login';
  static final String studentVerify = '/verify';
  static final String resendVerificationCode = '/resendVerificationCode';
  static final String logout = '/logout';
  static final String fillStudentData = '/students/fillStudentData';

  ///STUDENT_PROFILE
  static final String showProfile = "/students/studentProfile/me";
  static final String updateProfile = "/students/studentProfile/me";


  ///Courses
  static final String indexCourses = '/courses';
  static String showCourse(int courseId) => '/courses/$courseId';
  static final String indexScholarships = '/scholarships';
  static String showScholarship(int scholarshipId) => '/scholarships/$scholarshipId';

  ///Levels
  static String indexLevels(int courseId) => '/courses/$courseId/levels';
  static String showLevel(int levelId) => 'levels/$levelId';


  ///Subject
  static final String indexSubjects = '/students/subject';

  static String showSubject(int subjectId) => '/students/subject/$subjectId';

  ///PARAM
  static final String indexParam = '/students/param';

  ///UNIT
  static final String indexUnits = '/students/unit';

  static String showUnit(int unitId) => '/students/unit/$unitId';

  ///LESSON
  static final String indexLessons = '/students/lesson';

  static String showLesson(int lessonId) => '/students/lesson/$lessonId';

  ///PARAM
  static final String showParam = "/students/param";

  ///Grade
  static final String indexGrade = '/students/grade?sort_by=desc';

  ///EXAM
  static final String indexExam = '/students/exam';

  static String showExam(String uuid) => '/students/exam/$uuid';
  static final String storeExam = "/students/exam";

  static String questions(int id) => '/students/exam/questions/:$id';

  static String takeExam(String uuid) => '/students/exam/take/:$uuid';

  ///REPORT
  static final String storeReport = '/students/report';

  ///SAVED_COLLECTIONS
  static final String indexSavedCollection = '';
  static final String showSavedCollection = '';
  static final String storeSavedCollection = '';
  static final String updateSavedCollection = '';
  static final String deleteSavedCollection = '';

  ///COLLECTION_ITEM
  static final String storeCollectionItem = '';
  static final String indexCollectionItem = '';
  static final String deleteCollectionItem = '';

  ///TAG

  static String indexTag({
    List<int>? unitIds,
    List<int>? lessonIds,
    int? page,
  }) {
    final queryParams = <String>[];

    if (unitIds != null) {
      for (int i = 0; i < unitIds.length; i++) {
        if (i == unitIds.length - 1) {
          queryParams.add('unitIds[$i]=${unitIds[i]}');
        } else {
          queryParams.add('unitIds[$i]=${unitIds[i]}&');
        }
      }
    }

    if (lessonIds != null) {
      for (int i = 0; i < lessonIds.length; i++) {
        if (i == lessonIds.length - 1) {
          queryParams.add('lessonIds[$i]=${lessonIds[i]}');
        } else {
          queryParams.add('lessonIds[$i]=${lessonIds[i]}&');
        }
      }
    }

    if (page != null) {
      queryParams.add('page=$page');
    }

    final queryString =
        queryParams.isNotEmpty ? '?${queryParams.join('&')}' : '';

    return '/students/tag$queryString';
  }

  ///SOLUTION
  static final String submitSolution = '/students/exam/submit';

  ///QUESTION
  static final String questionCount = '/students/question/count';
  static final String mistakenQuestions = '/students/question/mistakes';
  static final String showQuestion = '';

  ///RESELLER

  static final String indexReseller = '/students/reseller';

  static String indexResellerByCity(int cityId) =>
      '/students/reseller?city_id=$cityId';

  ///AREA
  static final String indexArea = '/students/area';

  static String indexAreaByCity(int cityId) => '/students/area?city_id=$cityId';

  static String showArea(int areaId) => '/students/area/$areaId';

  ///CITY
  static final String indexCity = "/students/city";

  static String showCity(int cityId) => '/students/city/$cityId';

  ///NOTIFICATION
  static final String myNotification = "/students/notification/my";
}
