class RegisterModel {
  final String username;
  final String email;
  final String password;
  final int phone;

  RegisterModel({required this.username, required this.email, required this.password, required this.phone});

  Map<String, dynamic> toJson() {
    return {
      'name': username,
      'email': email,
      'password': password,
      'phone': phone,
    };
  }
}
