import 'dart:math';

import 'package:flutter/material.dart';

import '../models/Messages.dart';
import '../models/User.dart';
import '../pages/whatApp/ChatUser.dart';

class UserList extends StatelessWidget {
  const UserList({super.key, required this.users});
  final Future<List<User>> users;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder<List<User>>(
        future: this.users,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                final User user = snapshot.data![index];
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => UserChat(user: user)));
                  },
                  child: ListTile(
                    subtitle: Text(
                        "${Message.messages()[Random().nextInt(Message.messages().length - 1)].message}"),
                    leading: CircleAvatar(
                      backgroundColor: Colors.green,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.network(user.avatar_url),
                      ),
                    ),
                    title: Text(user.login),
                    //trailing: Image.network(user.avatar_url),
                  ),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }

          // By default, show a loading spinner.
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
