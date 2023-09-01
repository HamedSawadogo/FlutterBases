import 'dart:math';
import 'package:flutter/material.dart';
import 'package:giffy_dialog/giffy_dialog.dart';
import 'package:testbases/models/Messages.dart';
import 'package:testbases/models/User.dart';
import 'package:testbases/pages/whatApp/ChatUser.dart';

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
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => UserChat(user: user)));
                  },
                  child: ListTile(
                    subtitle: Text(Message.messages()[
                            Random().nextInt(Message.messages().length - 1)]
                        .message),
                    leading: CircleAvatar(
                      backgroundColor: Colors.green,
                      child: InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return GiffyDialog.image(
                                title: Text(user.login),
                                Image.network(
                                  user.avatar_url,
                                  width: MediaQuery.of(context).size.width,
                                  height: 200,
                                  fit: BoxFit.fill,
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(context, 'CANCEL'),
                                    child: Icon(Icons.call),
                                  ),
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(context, 'OK'),
                                    child: Icon(Icons.message),
                                  ),
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(context, 'OK'),
                                    child: Icon(Icons.video_call),
                                  ),
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(context, 'OK'),
                                    child: Icon(Icons.info),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.network(user.avatar_url),
                        ),
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
