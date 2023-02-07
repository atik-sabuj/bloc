class UserModel {
  final int id;
  final String email;
  final String firstname;
  final String lastname;
  final String avatar;

UserModel(
    {required this.id,
      required this.email,
      required this.firstname,
      required this.lastname,
      required this.avatar});

factory UserModel.fromJson(Map<String,dynamic> json) {
  return UserModel(
      id: json['id'],
      email: json['email'],
      firstname: json['first_name'] ?? 'First Name',
      lastname: json['last_name'] ?? 'Last Name',
      avatar: json['avatar'] ??
          'https://variety.com/wp-content/uploads/2022/12/MCDAVTH_WD032.jpg?w=681&h=383&crop=1&resize=681%2C383');
}
}