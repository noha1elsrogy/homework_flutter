class UserModel {
  final String firstName;
  final String lastName;
  final String email;
  final String password;

  UserModel({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
  });
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      firstName: json['firstName'],
      lastName: json['lastName'],
      email: json['email'],
      password: json['password'],
    );
  }
  Map<String, dynamic> toJson() => {
    'firstName': firstName,
    'lastName': lastName,
    'email': email,
    'password': password,
  };
  // Map<String, dynamic> toMap() {
  //   return {
  //     'firstName': firstName,
  //     'lastName': lastName,
  //     'email': email,
  //     'password': password,
  //   };
  // }
}
