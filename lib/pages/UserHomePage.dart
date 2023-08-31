import 'package:flutter/material.dart';
import 'package:testbases/models/User.dart';
import 'package:testbases/widgets/Userslist.dart';

class UsersHomePage extends StatelessWidget {
  const UsersHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return UserList(users: User.fetchUsers());
  }
}
