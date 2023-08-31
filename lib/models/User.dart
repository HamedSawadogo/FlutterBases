import 'dart:convert';
import 'package:http/http.dart' as http;

class User {
  int id;
  String avatar_url;
  String login;

  User({
    required this.id,
    required this.avatar_url,
    required this.login,
  });
  static Future<List<User>> fetchUsers() async {
    var url = Uri.parse('https://api.github.com/users');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((data) => User.fromJson(data)).toList();
    } else {
      throw Exception('Unexpected error occured!');
    }
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'avatar_url': avatar_url,
      'login': login,
    };
  }

  factory User.fromJson(Map<String, dynamic> map) {
    return User(
      id: map['id']?.toInt() ?? 0,
      avatar_url: map['avatar_url'] ?? '',
      login: map['login'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());
}
