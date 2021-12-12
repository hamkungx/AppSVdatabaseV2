class UserModel {
  final String username;
  final String? password;
  final String fullname;

  UserModel({required this.username, this.password, required this.fullname});

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
        fullname: map['fullname'],
        username: map['username'],
        password: map['password']);
  }
}
