import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/Messages.dart';
import '../provider/UserMessagesProvider.dart';

class ButtonSendWidget extends StatefulWidget {
  const ButtonSendWidget({super.key});

  @override
  State<ButtonSendWidget> createState() => _ButtonSendWidgetState();
}

class _ButtonSendWidgetState extends State<ButtonSendWidget> {
  final TextEditingController _userMessage = TextEditingController();

  bool isWriting = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 19),
      child: Row(children: [
        Expanded(
            flex: 7,
            child: TextFormField(
              onChanged: (value) {
                if (value.length >= 1) {
                  setState(() {
                    isWriting = true;
                  });
                } else {
                  setState(() {
                    isWriting = false;
                  });
                }
              },
              controller: _userMessage,
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.emoji_emotions),
                  suffixIcon: const Icon(Icons.photo_camera),
                  // prefixIcon:
                  //     Row(children: [Icon(Icons.photo), Icon(Icons.share)]),
                  hintText: "Message",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
            )),
        const SizedBox(
          width: 4,
        ),
        Expanded(
          flex: 1,
          child: FloatingActionButton(
              onPressed: () {},
              child: isWriting
                  ? IconButton(
                      onPressed: () {
                        final newMessage = Message(
                            _userMessage.text,
                            DateTime.now(),
                            MessageStatus.sended,
                            MessageType.text);
                        Provider.of<MessagesProvider>(context, listen: false)
                            .addMessage(newMessage);
                        print("Envoie de message...${_userMessage.text}");
                        setState(() {
                          _userMessage.text = "";
                        });
                      },
                      icon: const Icon(Icons.send_rounded))
                  : IconButton(
                      onPressed: () {
                        print("Envoie de vocal....");
                      },
                      icon: const Icon(Icons.keyboard_voice_outlined))),
        )
      ]),
    );
  }
}
