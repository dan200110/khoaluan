class User {
  String name;
  String contact;
  String email;
  String password;
  User(
      {required this.name,
      required this.contact,
      required this.email,
      required this.password});
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        name: json['username'],
        contact: json['contact'],
        email: json['email'],
        password: json['password']);
  }
}

class UserCredential {
  String usernameOrEmail;
  String password;
  UserCredential({required this.usernameOrEmail, required this.password});
}
