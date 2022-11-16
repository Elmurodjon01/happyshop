class Account {
  String username;
  String password;
  String email;
  String phone;
  Account(
      {required this.username,
      required this.password,
      required this.email,
      required this.phone});
  Account.fromJson(Map<String, dynamic> json)
      : username = json['username'],
        password = json['password'],
        email = json['email'],
        phone = json['phone'];

  Map<String, dynamic> toJson() => {
        'username': username,
        'password': password,
        'email': email,
        'phone': phone,
      };
}
