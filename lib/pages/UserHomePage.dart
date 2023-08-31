import 'package:flutter/material.dart';
import 'package:testbases/models/User.dart';

class UsersHomePage extends StatelessWidget {
  const UsersHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder<List<User>>(
        future: User.fetchUsers(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                final User user = snapshot.data![index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.green,
                    child: ClipRRect(
                      child: Image.network(user.avatar_url),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  title: Text(user.login),
                  //trailing: Image.network(user.avatar_url),
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
