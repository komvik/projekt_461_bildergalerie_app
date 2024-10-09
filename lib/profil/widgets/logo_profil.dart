import 'package:flutter/material.dart';

class LogoProfil extends StatelessWidget {
  const LogoProfil({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(shape: BoxShape.circle),
      child: ClipOval(
        child: SizedBox.fromSize(
          size: const Size.fromRadius(100), // Image radius
          child: const Image(image: AssetImage("assets/images/kaya.jpeg")),
        ),
      ),
    );
  }
}
