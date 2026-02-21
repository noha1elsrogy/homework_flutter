class UserModel {
  final String? id; // الـ UUID اللي هييجي من سوبا بيس
  final String name;
  final String email;
  final String? role;

  UserModel({this.id, required this.name, required this.email, this.role});
  Map<String, dynamic> toMap() {
    return {'id': id, 'name': name, 'email': email, 'role': role};
  }

  factory UserModel.fromJson(Map<String, dynamic> map) {
    return UserModel(
      name: map['name'],
      email: map['email'],
      role: map['role'],
      id: map['id'],
    );
  }
}
