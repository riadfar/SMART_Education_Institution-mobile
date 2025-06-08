import 'dart:io';

import '../../utils/dio_methods.dart';
import '../../utils/end_points.dart';
import '../../utils/headers.dart';
import '../../utils/secure_storage.dart';

class AuthApi {

  Future<Map<String, dynamic>> studentRegister({
    required Map<String, dynamic> data, //phone
  }) async {
    final response = await RemoteApi.post(
      EndPoints.register,
      headers: headers,
      body: data,
    );
    return response.data;
  }

  Future<Map<String, dynamic>> studentLogin({
    required Map<String, dynamic> data, //phone
  }) async {
    final response = await RemoteApi.post(
      EndPoints.login,
      headers: headers,
      body: data,
    );
    return response.data;
  }

  Future<Map<String, dynamic>> resendVerificationCode({
    required Map<String, dynamic> data, //phone
  }) async {
    final response = await RemoteApi.post(
      EndPoints.resendVerificationCode,
      headers: headers,
      body: data,
    );
    return response.data;
  }

  Future<Map<String, dynamic>> studentVerify({
    required Map<String, dynamic> data, //phone,code,fcm_token
  }) async {
    final response = await RemoteApi.post(
      EndPoints.studentVerify,
      headers: headers,
      body: data,
    );
    return response.data;
  }

  Future<Map<String, dynamic>> fillStudentData({
    required Map<String, dynamic>
    data, //first,last name , gender, grade_id, area_id
  }) async {
    var token = SecureStorage.getToken();

    final response = await RemoteApi.post(
      EndPoints.fillStudentData,
      headers: headersWithAuth(await token),
      body: data,
    );
    return response.data;
  }

  Future<Map<String, dynamic>> studentLogout() async {
    var token = SecureStorage.getToken();
    final response = await RemoteApi.post(
      EndPoints.logout,
      headers: headersWithAuth(await token),
    );
    SecureStorage.removeToken();
    return response.data;
  }

  Future<Map<String, dynamic>> showStudentProfile() async {
    var token = SecureStorage.getToken();

    final response = await RemoteApi.get(
      EndPoints.showProfile,
      headers: headersWithAuth(await token),
    );
    return response.data;
  }

  Future<Map<String, dynamic>> updateStudentProfile({
    required Map<String, dynamic> data,
    File? image,
  }) async {
    var token = await SecureStorage.getToken();
    if (image != null) {
      final response = await RemoteApi.postWithFile(
        url: EndPoints.updateProfile,
        fields: {},
        filePath: image.path,
        filesKey: 'image',
      );
      return response.data;
    } else {
      final response = await RemoteApi.post(
        EndPoints.updateProfile,
        headers: headersWithAuth(token),
        body: data,
      );
      return response.data;
    }
  }
}