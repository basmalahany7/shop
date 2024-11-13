import 'package:dio/dio.dart';
import '../Models/authonticationmodel.dart';
import '../Models/loginModel.dart';
import '../Models/signupmodel.dart';

class AuthService {
  static Dio dio = Dio();
  static Future<AuthResponse> register(RegisterModel registerModel) async {
  try {
  final response = await dio.post('https://student.valuxapps.com/api/register', data: registerModel.toJson());
  return AuthResponse.fromJson(response.data);
  } catch (e) {
  print('Failed to register: $e');
  throw Exception('Failed to register');
  }
  }
  static Future<AuthResponse> login(LoginModel loginModel) async {
    try {
      final response = await dio.post('https://student.valuxapps.com/api/login', data: loginModel.toJson());
      return AuthResponse.fromJson(response.data);
    } catch (e) {
      throw Exception('Failed to login');
    }
  }
  }

