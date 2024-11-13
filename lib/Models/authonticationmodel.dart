class AuthResponse {
  final bool status;
  final String message;

  AuthResponse({required this.status, required this.message});

  factory AuthResponse.fromJson(Map<String, dynamic> json) {
    return AuthResponse(
      status: json['status'],
      message: json['message'],
    );
  }
}
