import 'package:flutter/material.dart';
import 'package:testbases/models/Messages.dart';
import 'package:testbases/models/User.dart';
import 'package:testbases/widgets/AvatarImageWidget.dart';
import '../../widgets/ButtomSendWidget.dart';

class UserChat extends StatelessWidget {
  const UserChat({super.key, required this.user});
  final User user;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const SizedBox(
                    width: 40,
                  ),
                  AvatarProfilWidget(imageUrl: this.user.avatar_url),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    this.user.login,
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.video_call)),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.call)),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.more_vert)),
                ],
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 9,
            child: ListView.builder(
              itemCount: Message.messages().length,
              itemBuilder: (context, index) {
                final Message message = Message.messages()[index];
                return message.status == MessageStatus.received
                    ? Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          height: 40,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 14, 175, 86),
                              borderRadius: BorderRadius.circular(30)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              message.message,
                              style: const TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                      )
                    : Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          height: 40,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 225, 222, 222),
                              borderRadius: BorderRadius.circular(30)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              message.message,
                              style: const TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                      );
              },
            ),
          ),
          Expanded(child: const ButtonSendWidget())
        ],
      ),
    );
  }
}
