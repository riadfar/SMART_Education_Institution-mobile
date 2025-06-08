import 'dart:io';

import '../../utils/secure_storage.dart';
import '../api/auth_api.dart';
import '../models/student.dart';
import '../models/user.dart';

class AuthRepo {
  final AuthApi api;

  AuthRepo({required this.api});

  Future<String> studentRegister({
    required String email,
    required String password,
    required String confirmPassword,
  }) async {
    try {
      final response = await api.studentRegister(
        data: {
          "email": email,
          "password": password,
          "confirm_password": confirmPassword,
        },
      );
      final String status = response['status'];
      return status;
    } catch (e) {
      print('error in repo :${e.toString()}');
      rethrow;
    }
  }

  Future<String> studentLogin({
    required String email,
    required String password,
  }) async {
    try {
      final response = await api.studentRegister(
        data: {"email": email, "password": password},
      );
      final String status = response['status'];
      return status;
    } catch (e) {
      print('error in repo :${e.toString()}');
      rethrow;
    }
  }

  Future<String> resendVerificationCode({required String email}) async {
    try {
      final response = await api.resendVerificationCode(data: {"email": email});
      final String status = response['status'];
      return status;
    } catch (e) {
      print('error in repo :${e.toString()}');
      rethrow;
    }
  }

  Future<User> studentVerify({
    required String email,
    required String verificationCode,
  }) async {
    try {
      final response = await api.studentVerify(
        data: {"email": email, "verification_code": verificationCode},
      );
      final userData = response['data'];
      final User user = User.fromMap(userData);
      // print(
      //   "phone number:${user.email}\n user_id : ${user.userId}\n requireStudentData : ${user.requireStudentData}\n token : ${userData["token"]}",
      // );
      SecureStorage.storeToken(userData['token']?.toString() ?? "");

      return user;
    } catch (e) {
      print('error in repo :${e.toString()}');
      rethrow;
    }
  }

  Future<Student> fillStudentData({
    required String firstName,
    required String lastName,
    required String phoneNumber,
    required String gender,
    int? age,
  }) async {
    try {
      final response = await api.fillStudentData(
        data: {
          "first_name": firstName,
          "last_name": lastName,
          "gender": gender,
          "phone_number": phoneNumber,
          "age" : age,
          //add the age if it exists
        },
      );
      final Student student = Student.fromMap(response['data']);
      return student;
    } catch (e) {
      print('error in repo :${e.toString()}');
      rethrow;
    }
  }

  Future<String> studentLogout() async {
    try {
      final response = await api.studentLogout();
      final String status = response['status'];
      return status;
    } catch (e) {
      print('error in repo :${e.toString()}');
      rethrow;
    }
  }

  Future<Student> showStudentProfile() async {
    try {
      final response = await api.showStudentProfile();
      final Student student = Student.fromMap(response["data"]);
      return student;
    } catch (e) {
      print('error in repo  :${e.toString()}');
      rethrow;
    }
  }

  Future<void> updateStudentProfile({
    String? firstName,
    String? lastName,
    String? gender,
    String? age,
    File? image,
  }) async {
    try {
      await api.updateStudentProfile(
        data: {
          "first_name": firstName,
          "last_name": lastName,
          "gender": gender,
          "age": age,
          "image": image,
        },
        image: image,
      );
    } catch (e) {
      print('error in repo :${e.toString()}');
      rethrow;
    }
  }
}
