import 'package:flutter/material.dart';

class ButtonSendWidget extends StatelessWidget {
  const ButtonSendWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 19),
      child: Row(children: [
        Expanded(
            flex: 7,
            child: TextFormField(
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
            child: const Icon(Icons.keyboard_voice_outlined),
          ),
        )
      ]),
    );
  }
}
