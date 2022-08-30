import 'package:flutter/material.dart';

class SocialMediaIcon extends StatelessWidget {
  final String image;
  const SocialMediaIcon({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CircleAvatar(
      radius: size.height * .025,
      backgroundColor: const Color.fromARGB(255, 75, 14, 136),
      child: Image.asset(image),
    );
  }
}