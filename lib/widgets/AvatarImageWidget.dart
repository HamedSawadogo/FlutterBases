import 'package:flutter/material.dart';

class AvatarProfilWidget extends StatelessWidget {
  const AvatarProfilWidget({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.network(this.imageUrl)),
    );
  }
}
