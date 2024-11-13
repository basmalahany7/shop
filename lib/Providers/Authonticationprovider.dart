import 'package:flutter/material.dart';

import '../Models/loginModel.dart';
import '../Models/signupmodel.dart';
import '../Services/authonticationservices.dart';


class AuthProvider with ChangeNotifier {
  String _message = '';
  String get message => _message;
  RegisterModel? _registeredUser;

  Future<bool> register(RegisterModel registerModel) async {
    try {
      await AuthService.register(registerModel);
      _registeredUser = registerModel;
      _message = 'Registration successful';
      notifyListeners();
      return true;
    } catch (e) {
      _message = 'Registration failed: $e';
      notifyListeners();
      return false;
    }
  }

  Future<bool> login(LoginModel loginModel) async {
    try {
      if (_registeredUser != null &&
          _registeredUser!.email == loginModel.email &&
          _registeredUser!.password == loginModel.password) {
        _message = 'Login successful';
        notifyListeners();
        return true;
      } else {
        _message = 'Invalid credentials';
        notifyListeners();
        return false;
      }
    } catch (e) {
      _message = 'Login failed: $e';
      notifyListeners();
      return false;
    }
  }
}
